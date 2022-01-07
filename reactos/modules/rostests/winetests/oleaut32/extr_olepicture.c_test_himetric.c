
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int desc ;
struct TYPE_6__ {int * hicon; } ;
struct TYPE_5__ {int hbitmap; int * hpal; } ;
struct TYPE_7__ {int cbSizeofstruct; TYPE_2__ icon; int picType; TYPE_1__ bmp; } ;
typedef TYPE_3__ PICTDESC ;
typedef scalar_t__ OLE_YSIZE_HIMETRIC ;
typedef scalar_t__ OLE_XSIZE_HIMETRIC ;
typedef int IPicture ;
typedef scalar_t__ INT ;
typedef scalar_t__ HRESULT ;
typedef int * HICON ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int BYTE ;


 int CreateBitmap (double,double,int,int,int *) ;
 int CreateCompatibleDC (int ) ;
 int * CreateIcon (int *,scalar_t__,scalar_t__,int,int,int const*,int const*) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int DestroyIcon (int *) ;
 int FALSE ;
 double GetDeviceCaps (int ,int ) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 scalar_t__ IPicture_get_Height (int *,scalar_t__*) ;
 scalar_t__ IPicture_get_Width (int *,scalar_t__*) ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 scalar_t__ MulDiv (scalar_t__,int,double) ;
 scalar_t__ OleCreatePictureIndirect (TYPE_3__*,int *,int ,void**) ;
 int PICTYPE_BITMAP ;
 int PICTYPE_ICON ;
 int SM_CXICON ;
 int SM_CYICON ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_himetric(void)
{
    static const BYTE bmp_bits[1024];
    OLE_XSIZE_HIMETRIC cx;
    OLE_YSIZE_HIMETRIC cy;
    IPicture *pic;
    PICTDESC desc;
    HBITMAP bmp;
    HRESULT hr;
    HICON icon;
    HDC hdc;
    INT d;

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_BITMAP;
    desc.bmp.hpal = ((void*)0);

    hdc = CreateCompatibleDC(0);

    bmp = CreateBitmap(1.9 * GetDeviceCaps(hdc, LOGPIXELSX),
                       1.9 * GetDeviceCaps(hdc, LOGPIXELSY), 1, 1, ((void*)0));

    desc.bmp.hbitmap = bmp;


    hr = OleCreatePictureIndirect(&desc, &IID_IPicture, FALSE, (void**)&pic);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    cx = 0;
    d = MulDiv((INT)(1.9 * GetDeviceCaps(hdc, LOGPIXELSX)), 2540, GetDeviceCaps(hdc, LOGPIXELSX));
    hr = IPicture_get_Width(pic, &cx);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(cx == d, "got %d, expected %d\n", cx, d);

    cy = 0;
    d = MulDiv((INT)(1.9 * GetDeviceCaps(hdc, LOGPIXELSY)), 2540, GetDeviceCaps(hdc, LOGPIXELSY));
    hr = IPicture_get_Height(pic, &cy);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(cy == d, "got %d, expected %d\n", cy, d);

    DeleteObject(bmp);
    IPicture_Release(pic);


    icon = CreateIcon(((void*)0), GetSystemMetrics(SM_CXICON), GetSystemMetrics(SM_CYICON),
                      1, 1, bmp_bits, bmp_bits);
    ok(icon != ((void*)0), "failed to create icon\n");

    desc.picType = PICTYPE_ICON;
    desc.icon.hicon = icon;

    hr = OleCreatePictureIndirect(&desc, &IID_IPicture, FALSE, (void**)&pic);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    cx = 0;
    d = MulDiv(GetSystemMetrics(SM_CXICON), 2540, GetDeviceCaps(hdc, LOGPIXELSX));
    hr = IPicture_get_Width(pic, &cx);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(cx == d, "got %d, expected %d\n", cx, d);

    cy = 0;
    d = MulDiv(GetSystemMetrics(SM_CYICON), 2540, GetDeviceCaps(hdc, LOGPIXELSY));
    hr = IPicture_get_Height(pic, &cy);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(cy == d, "got %d, expected %d\n", cy, d);

    IPicture_Release(pic);
    DestroyIcon(icon);

    DeleteDC(hdc);
}
