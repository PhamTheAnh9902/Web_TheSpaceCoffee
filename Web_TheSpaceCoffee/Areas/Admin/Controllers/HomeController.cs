using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using TheSpaceCofffeeAdmin.Models;
using Web_TheSpaceCoffee.Models;
using X.PagedList;

namespace Web_TheSpaceCoffee.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("admin")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        QlbanCafeNhom04N04Context db = new QlbanCafeNhom04N04Context();

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        [AutoValidateAntiforgeryToken]
        [Route("index")]
        public IActionResult Index()
        {
            return View();
        }

        //*******Store********
        [Route("Store")]
        public IActionResult Store(int? page)
        {
            int pageSize = 5;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstStore = db.TbCuaHangs.OrderBy(x => x.MaCuaHang);
            PagedList<TbCuaHang> lst = new PagedList<TbCuaHang>(lstStore, pageNumber, pageSize);
            return View(lst);
        }

        //******findproductbystore******
        
        [Route("FindStore")]
        [HttpGet]
        public ActionResult FindStore(String search, int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var list = db.TbCuaHangs.Where(x => x.MaCuaHang == search).ToList();
            PagedList<TbCuaHang> lst = new PagedList<TbCuaHang>(list, pageNumber, pageSize);
            return View(lst);
        }

        //********addstore********
        [Route("AddStore")]
        [HttpGet]
        public IActionResult AddStore()
        {
            return View();
        }
        [Route("AddStore")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddStore(TbCuaHang cuaHang)
        {
            if (ModelState.IsValid)
            {
                db.TbCuaHangs.Add(cuaHang);
                db.SaveChanges();
                return RedirectToAction("Store");
            }
            return View(cuaHang);
        }

        //********editstore********
        [Route("EditStore")]
        [HttpGet]
        public IActionResult EditStore(string MaCuaHang)
        {

            var stores = db.TbCuaHangs.Find(MaCuaHang);
            return View(stores);

        }
        [Route("EditStore")]
        [HttpPost]
        /*[ValidateAntiForgeryToken]*/
        public IActionResult EditStore(TbCuaHang cuaHang)
        {
            if (ModelState.IsValid)
            {
                db.TbCuaHangs.Update(cuaHang);
                db.SaveChanges();
                return RedirectToAction("Store","admin");
            }
            else
            {
                return View(cuaHang);
            }
            
        }
        //********DeleteStore********
        [Route("DeleteStore")]
        [HttpGet]
        public IActionResult DeleteStore(String MaCuaHang)
        {
            TempData["msg"] = "";
            if (!String.IsNullOrEmpty(MaCuaHang))
            {
                var cuahang = db.TbCuaHangs.Find(MaCuaHang);
                db.Remove(cuahang);
                db.SaveChanges();
                TempData["msg"] = "Đã xóa cửa hàng thành công";
                return RedirectToAction("Store", "admin");
            }
            else
            {
                TempData["msg"] = "Không xóa được";
                return RedirectToAction("Store");
            }
            
        }

        //*******Product********
        [Route("Product")]
        public IActionResult Product(int? page)
        {
            int pageSize = 5;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstSanPham = db.TbSanPhams.OrderBy(x => x.MaSanPham);
            PagedList<TbSanPham> lst = new PagedList<TbSanPham>(lstSanPham, pageNumber, pageSize);
            return View(lst);
        }

        //******findproduct******

        [Route("FindProduct")]
        [HttpGet]
        public ActionResult FindProduct(String search, int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var list = db.TbSanPhams.Where(x => x.MaSanPham == search).ToList();
            PagedList<TbSanPham> lst = new PagedList<TbSanPham>(list, pageNumber, pageSize);
            return View(lst);
        }

        //********addproduct********
        [Route("AddProduct")]
        [HttpGet]
        public IActionResult AddProduct()
        {
            ViewBag.MaNhomSp = new SelectList(db.TbNhomSanPhams.ToList(), "MaNhomSp",
                "TenNhomSp");
            return View();
        }
        [Route("AddProduct")]
        [HttpPost]
        /*[ValidateAntiForgeryToken]*/
        public IActionResult AddProduct(TbSanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.TbSanPhams.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("Product");
            }
            return View(sanPham);
        }

        //********editstore********
        [Route("EditProduct")]
        [HttpGet]
        public IActionResult EditProduct(string MaSanPham)
        {

            var products = db.TbSanPhams.Find(MaSanPham);
            return View(products);

        }
        [Route("EditProduct")]
        [HttpPost]
        public IActionResult EditProduct(TbSanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.TbSanPhams.Update(sanPham);
                db.SaveChanges();
                return RedirectToAction("Product", "admin");
            }
            else
            {
                return View(sanPham);
            }

        }
        //********DeleteProduct********
        [Route("DeleteProduct")]
        [HttpGet]
        public IActionResult DeleteProduct(String MaSanPham)
        {
            TempData["msg"] = "";
            if (!String.IsNullOrEmpty(MaSanPham))
            {
                var sanpham = db.TbSanPhams.Find(MaSanPham);
                db.Remove(sanpham);
                db.SaveChanges();
                TempData["msg"] = "Đã xóa cửa hàng thành công";
                return RedirectToAction("Product", "admin");
            }
            else
            {
                TempData["msg"] = "Không xóa được";
                return RedirectToAction("Product");
            }

        }

        //*******Supplier********
        [Route("Supplier")]
        public IActionResult Supplier(int? page)
        {
            int pageSize = 5;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var list = db.TbNhaCungCaps.OrderBy(x => x.MaNhaCungCap);
            PagedList<TbNhaCungCap> lst = new PagedList<TbNhaCungCap>(list, pageNumber, pageSize);
            return View(lst);
        }

        //******findsupplier******

        [Route("FindSupplier")]
        [HttpGet]
        public ActionResult FindSupplier(String search, int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var list = db.TbNhaCungCaps.Where(x => x.MaNhaCungCap == search).ToList();
            PagedList<TbNhaCungCap> lst = new PagedList<TbNhaCungCap>(list, pageNumber, pageSize);
            return View(lst);
        }

        //********addsupplier********
        [Route("AddSupplier")]
        [HttpGet]
        public IActionResult AddSupplier()
        {
            return View();
        }
        [Route("AddSupplier")]
        [HttpPost]
        /*[ValidateAntiForgeryToken]*/
        public IActionResult AddSupplier(TbNhaCungCap nhacungcap)
        {
            if (ModelState.IsValid)
            {
                db.TbNhaCungCaps.Add(nhacungcap);
                db.SaveChanges();
                return RedirectToAction("Supplier");
            }
            return View(nhacungcap);
        }

        //********editsupplier********
        [Route("EditSupplier")]
        [HttpGet]
        public IActionResult EditSupplier(string MaNhaCungCap)
        {

            var nhacungcaps = db.TbNhaCungCaps.Find(MaNhaCungCap);
            return View(nhacungcaps);

        }
        [Route("EditSupplier")]
        [HttpPost]
        public IActionResult EditSupplier(TbNhaCungCap nhaCungCap)
        {
            if (ModelState.IsValid)
            {
                db.TbNhaCungCaps.Update(nhaCungCap);
                db.SaveChanges();
                return RedirectToAction("Supplier", "admin");
            }
            else
            {
                return View(nhaCungCap);
            }

        }
        //********DeleteSupplier********
        [Route("DeleteSupplier")]
        [HttpGet]
        public IActionResult DeleteSupplier(String MaNhaCungCap)
        {
            TempData["msg"] = "";
            if (!String.IsNullOrEmpty(MaNhaCungCap))
            {
                var nhacungcap = db.TbNhaCungCaps.Find(MaNhaCungCap);
                db.Remove(nhacungcap);
                db.SaveChanges();
                TempData["msg"] = "Đã xóa cửa hàng thành công";
                return RedirectToAction("Supplier", "admin");
            }
            else
            {
                TempData["msg"] = "Không xóa được";
                return RedirectToAction("Supplier");
            }

        }


        //*******Customer********
        [Route("Customer")]
        public IActionResult Customer(int? page)
        {
            int pageSize = 5;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var list = db.TbKhachHangs.OrderBy(x => x.MaKhachHang);
            PagedList<TbKhachHang> lst = new PagedList<TbKhachHang>(list, pageNumber, pageSize);
            return View(lst);
        }

        //******findcustomer******

        [Route("FindCustomer")]
        [HttpGet]
        public ActionResult FindCustomer(String search, int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var list = db.TbKhachHangs.Where(x => x.MaKhachHang == search).ToList();
            PagedList<TbKhachHang> lst = new PagedList<TbKhachHang>(list, pageNumber, pageSize);
            return View(lst);
        }

        //********addcustomer********
        [Route("AddCustomer")]
        [HttpGet]
        public IActionResult AddCustomer()
        {
            return View();
        }
        [Route("AddCustomer")]
        [HttpPost]
        /*[ValidateAntiForgeryToken]*/
        public IActionResult AddCustomer(TbKhachHang khachHang)
        {
            if (ModelState.IsValid)
            {
                db.TbKhachHangs.Add(khachHang);
                db.SaveChanges();
                return RedirectToAction("Customer");
            }
            return View(khachHang);
        }

        //********editcustomer********
        [Route("EditCustomer")]
        [HttpGet]
        public IActionResult EditCustomer(string MaKhachHang)
        {

            var khachHangs = db.TbKhachHangs.Find(MaKhachHang);
            return View(khachHangs);

        }
        [Route("EditCustomer")]
        [HttpPost]
        /*[ValidateAntiForgeryToken]*/
        public IActionResult EditCustomer(TbKhachHang khachHang)
        {
            if (ModelState.IsValid)
            {
                db.TbKhachHangs.Update(khachHang);
                db.SaveChanges();
                return RedirectToAction("Customer", "admin");
            }
            else
            {
                return View(khachHang);
            }

        }
        //********DeleteCustomer********
        [Route("DeleteCustomer")]
        [HttpGet]
        public IActionResult DeleteCustomer(String MaKhachHang)
        {
            TempData["msg"] = "";
            if (!String.IsNullOrEmpty(MaKhachHang))
            {
                var khachhang = db.TbKhachHangs.Find(MaKhachHang);
                db.Remove(khachhang);
                db.SaveChanges();
                TempData["msg"] = "Đã xóa cửa hàng thành công";
                return RedirectToAction("Customer", "admin");
            }
            else
            {
                TempData["msg"] = "Không xóa được";
                return RedirectToAction("Customer");
            }

        }























































        

        //dashbroad
        [Route("Dashbroad")]
        public IActionResult Dashbroad(int? page)
        {

            return View();
        }
        //StoreHouse
        [Route("StoreHouse")]
        public IActionResult StoreHouse(int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var lstStoreHouse = db.TbKhoVatTuChes.OrderBy(x => x.MaCuaHang);
            PagedList<TbKhoVatTuCh> lst = new PagedList<TbKhoVatTuCh>(lstStoreHouse, pageNumber, pageSize);
            return View(lst);
        }
        //findproductbystore
        [Route("FindStoreHouse")]
        public ActionResult FindStoreHouse(string searchNameStoreHouse, int? page)
        {
            int pageSize = 6;
            int pageNumber = page == null | page < 0 ? 1 : page.Value;
            var store = db.TbKhoVatTuChes.Where(t => t.MaCuaHang.Contains(searchNameStoreHouse)).ToList();
            PagedList<TbKhoVatTuCh> lst = new PagedList<TbKhoVatTuCh>(store, pageNumber, pageSize);
            ViewBag.SearchName = searchNameStoreHouse;
            return View(lst);
        }
        //addstorehouse
        [Route("AddStoreHouse")]
        [HttpGet]
        public IActionResult AddStoreHouse()
        {
            ViewBag.MaCuaHang = new SelectList(db.TbCuaHangs.ToList(), "MaCuaHang","TenCuaHang");
            ViewBag.MaVatTu = new SelectList(db.TbVatTus.ToList(), "MaVatTu","TenVatTu");
            return View();
        }
        [Route("AddStoreHouse")]
        [HttpPost]
        /*[ValidateAntiForgeryToken]*/
        public IActionResult AddStoreHouse(TbKhoVatTuCh tbKhoVatTu)
        {
            if (ModelState.IsValid)
            {
                db.TbKhoVatTuChes.Add(tbKhoVatTu);
                db.SaveChanges();
                return RedirectToAction("StoreHouse");
            }
            else
            {
                return View();
            }
        }
        
        
        /* //Product
         [Route("StoreHouse")]
         public IActionResult ListProducts(int? page)
         {
             int pageSize = 3;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;
             var lstProducts = db.TbSanPhams.OrderBy(x => x.GiaBan);
             PagedList<TbSanPham> lst = new PagedList<TbSanPham>(lstProducts, pageNumber, pageSize);
              ViewBag.MaNhomSp = new SelectList(db.TbNhomSanPhams.ToList(), "MaNhomSp", "TenNhomSp");
             return View(lst);
         }
         //findproductbyname
         [Route("StoreHouse")]
         public ActionResult FindProduct(string searchNameProduct)
         {
             var product = db.TbSanPhams.Where(t => t.TenSanPham.Contains(searchNameProduct)).ToList();
             return View(product);
         }
         //addproduct
         [Route("StoreHouse")]
         [HttpGet]
         public IActionResult AddProduct()
         {
             ViewBag.MaNhomSP = new SelectList(db.TbNhomSanPhams.ToList(), "MaNhomSp", "TenNhomSp");
             return View();

         }
         [Route("StoreHouse")]
         [HttpPost]
         [ValidateAntiForgeryToken]
         public IActionResult AddProduct(TbSanPham sp)
         {

             if (ModelState.IsValid)
             {
                 db.TbSanPhams.Add(sp);
                 db.SaveChanges();
                 return RedirectToAction("ListProducts");
             }
             return View(sp);
         }
         //editproduct 
         [Route("StoreHouse")]
         [HttpGet]
         public IActionResult EditProduct(string IDProduct)
         {
             ViewBag.MaNhomSanPham = new SelectList(db.TbNhomSanPhams.ToList(), "MaNhomSp", "TenNhomSp");
             var product = db.TbSanPhams.Find(IDProduct);
             return View(product);

         }
         [Route("StoreHouse")]
         [HttpPost]
         [ValidateAntiForgeryToken]
         public IActionResult EditProduct(TbSanPham sp)
         {
             if (ModelState.IsValid)
             {
                 db.TbSanPhams.Update(sp);
                 db.SaveChanges();
                 return RedirectToAction("ListProduct");
             }
             return View(sp);
         }
         //Topping
         [Route("StoreHouse")]
         public IActionResult Topping(int? page)
         {
             int pageSize = 3;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;
             var lstTopping = db.TbToppings.OrderBy(x => x.MaTopping);
             PagedList<TbTopping> lst = new PagedList<TbTopping>(lstTopping, pageNumber, pageSize);
             return View(lst);
         }
         // findtoppingbyname
         [Route("StoreHouse")]
         public ActionResult FindTopping(string searchNameTopping)
         {
             var topp = db.TbToppings.Where(t => t.TenTopping.Contains(searchNameTopping)).ToList();
             return View(topp);
         }

         //addtopping
         [Route("StoreHouse")]
         [HttpGet]
         public IActionResult AddTopping()
         {
             return View();

         }
         [Route("StoreHouse")]
         [HttpPost]
         [ValidateAntiForgeryToken]
         public IActionResult AddTopping(TbTopping topping)
         {
             if (ModelState.IsValid)
             {
                 db.TbToppings.Add(topping);
                 db.SaveChanges();
                 return RedirectToAction("Topping");
             }
             return View(topping);
         }
         //edittoping
         [Route("StoreHouse")]
         [HttpGet]
         public IActionResult EditTopping(string IDTopping)
         {
             var topping = db.TbToppings.Find(IDTopping);
             return View(topping);

         }
         [Route("StoreHouse")]
         [HttpPost]
         [ValidateAntiForgeryToken]
         public IActionResult EditTopping(TbTopping topping)
         {
             if (ModelState.IsValid)
             {
                 db.Update(topping);
                 db.SaveChanges();
                 return RedirectToAction("Topping");
             }
             return View(topping);
         }
         //deleteTopping

         //PayAmount
         [Route("StoreHouse")]
         public IActionResult PayAmount(int? page)
         {
             List<HoaDonNhap> HoaDonNhap = new List<HoaDonNhap>();

             using (var db = new QlbanCafeNhom04N04Context())
             {
                 var query = from cthn in db.TbChiTietHdns
                             join hdn in db.TbHoaDonNhaps on cthn.MaHoaDonNhap equals hdn.MaHoaDonNhap
                             select new HoaDonNhap
                             {
                                 MaHoaDonNhap = cthn.MaHoaDonNhap,
                                 MaVatTu = cthn.MaVatTu,
                                 NgayLap = hdn.NgayLap,
                                 SoLuongNhap = cthn.SoLuongNhap,
                                 GiaNhap = cthn.GiaNhap,
                                 MaNhaCungCap = hdn.MaNhaCungCap,
                                 TongTien = cthn.GiaNhap * cthn.SoLuongNhap,
                             };

                 HoaDonNhap = query.OrderBy(x => x.MaHoaDonNhap).ToList();
             }
             int pageSize = 6;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;

             var pageHoaDonNhap = HoaDonNhap.ToPagedList(pageNumber, pageSize);
             return View(pageHoaDonNhap);
         }
         //FindPayAmount
         [Route("StoreHouse")]
         public ActionResult FindPayAmount(DateTime searchDate, int? page)
         {
             List<HoaDonNhap> HoaDonNhap = new List<HoaDonNhap>();

             using (var db = new QlbanCafeNhom04N04Context())
             {
                 var query = from cthn in db.TbChiTietHdns
                             join hdn in db.TbHoaDonNhaps on cthn.MaHoaDonNhap equals hdn.MaHoaDonNhap
                             select new HoaDonNhap
                             {
                                 MaHoaDonNhap = cthn.MaHoaDonNhap,
                                 MaVatTu = cthn.MaVatTu,
                                 NgayLap = hdn.NgayLap,
                                 SoLuongNhap = cthn.SoLuongNhap,
                                 GiaNhap = cthn.GiaNhap,
                                 MaNhaCungCap = hdn.MaNhaCungCap,
                                 TongTien = cthn.GiaNhap * cthn.SoLuongNhap,
                             };

                 HoaDonNhap = query.Where(x => x.NgayLap == searchDate).OrderBy(x => x.MaHoaDonNhap).ToList();
             }
             int pageSize = 6;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;

             var pageHoaDonNhap = HoaDonNhap.ToPagedList(pageNumber, pageSize);
             ViewBag.SearchName = searchDate;
             return View(pageHoaDonNhap);

         }
         //addpayamount
         [Route("StoreHouse")]
         [HttpGet]
         public IActionResult AddPayAmount()
         {

             ViewBag.MaNhaCungCap = new SelectList(db.TbNhaCungCaps.ToList(), "MaNhaCungCap", "TenNhaCungCap");
             ViewBag.MaVatTu = new SelectList(db.TbVatTus.ToList(), "MaVatTu", "TenVatTu");
             return View();

         }
         [Route("StoreHouse")]
         [HttpPost]
         [ValidateAntiForgeryToken]
         public IActionResult AddPayAmount(HoaDonNhap hoaDonNhap)
         {
             List<HoaDonNhap> HoaDonNhap = new List<HoaDonNhap>();
             if (ModelState.IsValid)
             {
                 HoaDonNhap.Add(hoaDonNhap);
                 db.SaveChanges();
                 return RedirectToAction("PayAmount");
             }
             return View(hoaDonNhap);
         }
         //editpayamount

         //Payment
         [Route("StoreHouse")]
         public IActionResult Payment(int? page)
         {
             List<HoaDonBan> Hdban = new List<HoaDonBan>();

             using (var db = new QlbanCafeNhom04N04Context())
             {
                 var query = from cthb in db.TbChiTietHdbs
                             join hdb in db.TbHoaDonBans on cthb.MaHoaDonBan equals hdb.MaHoaDonBan
                             join sp in db.TbSanPhams on cthb.MaSanPham equals sp.MaSanPham
                             select new HoaDonBan
                             {
                                 MaHoaDonBan = hdb.MaHoaDonBan,
                                 MaKhachHang = hdb.MaKhachHang,
                                 TenSanPham = sp.TenSanPham,
                                 NgayBan = hdb.NgayBan,
                                 SoLuong = cthb.SoLuong,
                                 GiaBan = (int?)sp.GiaBan,
                                 MaKichThuoc = cthb.MaKichThuoc,
                                 TongTien = (decimal)(cthb.SoLuong * sp.GiaBan * cthb.GiamGia),
                             };

                 Hdban = query.OrderBy(x => x.MaHoaDonBan).ToList();
             }
             int pageSize = 6;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;

             var pageHoaDonBan = Hdban.ToPagedList(pageSize, pageNumber);
             return View(pageHoaDonBan);
         }
         //findpayment
         [Route("StoreHouse")]
         public ActionResult FindPayment(DateTime searchDate, int? page)
         {
             List<HoaDonBan> Hdban = new List<HoaDonBan>();

             using (var db = new QlbanCafeNhom04N04Context())
             {
                 var query = from cthb in db.TbChiTietHdbs
                             join hdb in db.TbHoaDonBans on cthb.MaHoaDonBan equals hdb.MaHoaDonBan
                             join sp in db.TbSanPhams on cthb.MaSanPham equals sp.MaSanPham
                             select new HoaDonBan
                             {
                                 MaHoaDonBan = hdb.MaHoaDonBan,
                                 MaKhachHang = hdb.MaKhachHang,
                                 TenSanPham = sp.TenSanPham,
                                 NgayBan = hdb.NgayBan,
                                 SoLuong = cthb.SoLuong,
                                 GiaBan = (int?)sp.GiaBan,
                                 MaKichThuoc = cthb.MaKichThuoc,
                                 TongTien = (decimal)(cthb.SoLuong * sp.GiaBan * cthb.GiamGia),
                             };

                 Hdban = query.Where(x => x.NgayBan == searchDate).OrderBy(x => x.MaHoaDonBan).ToList();
             }
             int pageSize = 6;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;

             var pageHoaDonBan = Hdban.ToPagedList(pageSize, pageNumber);
             return View(pageHoaDonBan);
         }

         //addpayment

         //ListItem
         [Route("StoreHouse")]
         public IActionResult ListItem(int? page)
         {
             int pageSize = 6;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;
             var lstFindStore = db.TbVatTus.OrderBy(x => x.MaVatTu);
             PagedList<TbVatTu> lstfind = new PagedList<TbVatTu>(lstFindStore, pageNumber, pageSize);
             return View(lstfind);
         }
         //ListSubItem
         [Route("StoreHouse")]
         public IActionResult ListSubItem()
         {
             return View();
         }
         //ListAddItem
         public IActionResult ListAddItem(int? page)
         {
             List<NhapKho> nhapKho = new List<NhapKho>();

             using (var db = new QlbanCafeNhom04N04Context())
             {
                 var query = from cthn in db.TbChiTietHdns
                             join hdn in db.TbHoaDonNhaps on cthn.MaHoaDonNhap equals hdn.MaHoaDonNhap
                             select new NhapKho
                             {
                                 MaHoaDonNhap = cthn.MaHoaDonNhap,
                                 SoLuongNhap = cthn.SoLuongNhap,
                                 MaVatTu = cthn.MaVatTu,
                                 NgayLap = hdn.NgayLap,
                             };

                 nhapKho = query.OrderBy(x => x.MaHoaDonNhap).ToList();
             }
             int pageSize = 6;
             int pageNumber = page == null | page < 0 ? 1 : page.Value;

             var pageNhapKho = nhapKho.ToPagedList(pageNumber, pageSize);
             return View(pageNhapKho);
         }
         //addlistitem
         [HttpGet]
         public IActionResult AddListItem()
         {
             ViewBag.MaHoaDonNhap = new SelectList(db.TbHoaDonNhaps.ToList(), "MaHoaDonNhap", "MaHoaDonNhap");
             ViewBag.MaVatTu = new SelectList(db.TbVatTus.ToList(), "MaVatTu", "TenVatTu");
             return View();

         }
         [HttpPost]
         [ValidateAntiForgeryToken]
         public IActionResult AddListItem(TbChiTietHdn cthdnhap)
         {
             if (ModelState.IsValid)
             {
                 db.TbChiTietHdns.Add(cthdnhap);
                 db.SaveChanges();
                 return RedirectToAction("ListAddItem");
             }
             return View(cthdnhap);
         }*/
    }
}
