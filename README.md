# 👓 RoyalGlassesManagement - Phần mềm quản lý cửa hàng kính mắt

**RoyalGlassesManagement** là ứng dụng Windows Forms được phát triển bằng **C#** (.NET Framework), giúp chủ cửa hàng kính mắt quản lý toàn diện hoạt động kinh doanh một cách hiệu quả và chuyên nghiệp.

## 🚀 Tính năng chính

### 👤 Quản lý tài khoản & phân quyền

- Đăng nhập / Đăng xuất an toàn
- Quản lý tài khoản nhân viên & quản trị viên (thêm, sửa, xóa, thay đổi trạng thái hoạt động)
- Phân quyền chi tiết cho từng nhân viên (thêm/xóa quyền truy cập các chức năng)

### 🕶 Quản lý sản phẩm

- Thêm, sửa, xóa thông tin sản phẩm kính mắt
- Quản lý danh mục thuộc tính:
  - Loại sản phẩm (gọng, tròng, kính râm, kính áp tròng...)
  - Chất liệu (nhựa, kim loại, titan, gỗ...)
  - Màu sắc
  - Dạng mắt (tròn, vuông, mắt mèo, phi công...)
- Tìm kiếm sản phẩm nhanh theo: **giá bán**, **chất liệu**, **màu sắc**, **loại sản phẩm**, **dạng mắt**

### 👥 Quản lý khách hàng

- Thêm, sửa, xóa thông tin khách hàng
- Tìm kiếm khách hàng theo tên, số điện thoại, mã khách hàng...
- Cập nhật thông tin cá nhân và lịch sử mua hàng

### 💳 Quản lý hóa đơn bán hàng

- Tạo hóa đơn bán hàng mới (chọn sản phẩm, tính tiền, giảm giá, thanh toán)
- Tìm kiếm hóa đơn theo:
  - Khoảng thời gian (ngày/tháng/năm)
  - Tên khách hàng
  - Mã hóa đơn
- Xem chi tiết hóa đơn & **xuất hóa đơn ra file Excel**

### 📊 Thống kê & Báo cáo

- Thống kê **doanh thu**, **doanh số**, **chi phí** theo:
  - Theo tháng
  - Theo quý
  - Theo sản phẩm bán chạy
- Biểu đồ trực quan hỗ trợ ra quyết định kinh doanh

## 🛠 Công nghệ sử dụng

- **Ngôn ngữ lập trình**: C#  
- **Giao diện**: Windows Forms (.NET Framework)  
- **Cơ sở dữ liệu**: SQL Server 
- **ORM** (tùy chọn): Entity Framework  
- **Xuất Excel**: Microsoft Office Interop Excel (COM)  
- **Báo cáo & biểu đồ**: Chart Controls của Windows Forms

## 📂 Cấu trúc dự án
```text
RoyalGlassesManagement/
├── WDFBanKinhMat/
│   ├── Forms/                    # Các form giao diện
│   │   ├── frmDangNhap.cs
│   │   ├── frmMenu.cs
│   │   ├── frmSanPham.cs
│   │   ├── frmKhachHang.cs
│   │   ├── frmHoaDon.cs
│   │   ├── frmThongKe.cs
│   │   └── ...
│   ├── Classes/                 # Lớp kết nối và truy vấn database
│   ├── Resources/                # Hình ảnh logo ứng dụng
│   ├── Images/                # Hình ảnh các loại sản phẩm
│   └── Program.cs
├── WDFBanKinhMat.sln
└── README.md
```
Tác giả

TungAnh192

Cảm ơn bạn đã xem dự án!
