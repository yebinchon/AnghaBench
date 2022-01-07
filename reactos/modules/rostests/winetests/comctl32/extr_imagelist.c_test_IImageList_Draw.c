
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int imldp ;
struct TYPE_4__ {int y; int x; int i; void* rgbFg; void* rgbBk; int fStyle; scalar_t__ himl; int * hdcDst; int cbSize; } ;
typedef TYPE_1__ IMAGELISTDRAWPARAMS ;
typedef int IImageList ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HIMAGELIST ;
typedef int * HDC ;
typedef scalar_t__ HBITMAP ;


 void* CLR_DEFAULT ;
 scalar_t__ CreateBitmap (int,int,int,int,int ) ;
 int DeleteObject (scalar_t__) ;
 int DestroyWindow (int ) ;
 scalar_t__ E_INVALIDARG ;
 int * GetDC (int ) ;
 scalar_t__ IImageList_Add (int *,scalar_t__,int ,int*) ;
 scalar_t__ IImageList_Draw (int *,TYPE_1__*) ;
 int IImageList_Release (int *) ;
 scalar_t__ IImageList_Remove (int *,int ) ;
 scalar_t__ IImageList_Replace (int *,int,scalar_t__,int ) ;
 scalar_t__ IImageList_SetImageCount (int *,int) ;
 int ILC_COLOR16 ;
 int IMAGELISTDRAWPARAMS_V3_SIZE ;
 int ReleaseDC (int ,int *) ;
 int SRCCOPY ;
 scalar_t__ S_OK ;
 int bitmap_bits ;
 int create_window () ;
 int force_redraw (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;

__attribute__((used)) static void test_IImageList_Draw(void)
{
    IImageList *imgl;
    HIMAGELIST himl;

    HBITMAP hbm1;
    HBITMAP hbm2;
    HBITMAP hbm3;

    IMAGELISTDRAWPARAMS imldp;
    HWND hwndfortest;
    HRESULT hr;
    HDC hdc;
    int ret;

    hwndfortest = create_window();
    hdc = GetDC(hwndfortest);
    ok(hdc!=((void*)0), "couldn't get DC\n");


    himl = pImageList_Create(48, 48, ILC_COLOR16, 0, 3);
    ok(himl!=0,"failed to create imagelist\n");

    imgl = (IImageList *) himl;


    hbm1 = CreateBitmap(48, 48, 1, 1, bitmap_bits);
    ok(hbm1 != 0, "no bitmap 1\n");
    hbm2 = CreateBitmap(48, 48, 1, 1, bitmap_bits);
    ok(hbm2 != 0, "no bitmap 2\n");
    hbm3 = CreateBitmap(48, 48, 1, 1, bitmap_bits);
    ok(hbm3 != 0, "no bitmap 3\n");


    ret = -1;
    ok( IImageList_Add(imgl, hbm1, 0, &ret) == S_OK && (ret == 0), "failed to add bitmap 1\n");
    ret = -1;
    ok( IImageList_Add(imgl, hbm2, 0, &ret) == S_OK && (ret == 1), "failed to add bitmap 2\n");

    ok( IImageList_SetImageCount(imgl, 3) == S_OK, "Setimage count failed\n");
    ok( IImageList_Replace(imgl, 2, hbm3, 0) == S_OK, "failed to replace bitmap 3\n");

if (0)
{

    IImageList_Draw(imgl, ((void*)0));
}

    memset(&imldp, 0, sizeof (imldp));
    hr = IImageList_Draw(imgl, &imldp);
    ok( hr == E_INVALIDARG, "got 0x%08x\n", hr);

    imldp.cbSize = IMAGELISTDRAWPARAMS_V3_SIZE;
    imldp.hdcDst = hdc;
    imldp.himl = himl;

    force_redraw(hwndfortest);

    imldp.fStyle = SRCCOPY;
    imldp.rgbBk = CLR_DEFAULT;
    imldp.rgbFg = CLR_DEFAULT;
    imldp.y = 100;
    imldp.x = 100;
    ok( IImageList_Draw(imgl, &imldp) == S_OK, "should succeed\n");
    imldp.i ++;
    ok( IImageList_Draw(imgl, &imldp) == S_OK, "should succeed\n");
    imldp.i ++;
    ok( IImageList_Draw(imgl, &imldp) == S_OK, "should succeed\n");
    imldp.i ++;
    ok( IImageList_Draw(imgl, &imldp) == E_INVALIDARG, "should fail\n");


    ok( IImageList_Remove(imgl, 0) == S_OK, "removing 1st bitmap\n");
    ok( IImageList_Remove(imgl, 0) == S_OK, "removing 2nd bitmap\n");
    ok( IImageList_Remove(imgl, 0) == S_OK, "removing 3rd bitmap\n");


    IImageList_Release(imgl);


    ok(DeleteObject(hbm1),"bitmap 1 can't be deleted\n");
    ok(DeleteObject(hbm2),"bitmap 2 can't be deleted\n");
    ok(DeleteObject(hbm3),"bitmap 3 can't be deleted\n");

    ReleaseDC(hwndfortest, hdc);
    DestroyWindow(hwndfortest);
}
