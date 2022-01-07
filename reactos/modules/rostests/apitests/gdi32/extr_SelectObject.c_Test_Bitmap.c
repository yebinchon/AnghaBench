
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int * HBITMAP ;
typedef int BYTE ;


 int * CreateBitmap (int,int,int,int,int **) ;
 int CreateCompatibleDC (int *) ;
 int DEFAULT_BITMAP ;
 int DeleteDC (int ) ;
 int DeleteObject (int *) ;
 scalar_t__ GDI_HANDLE_GET_TYPE (int *) ;
 scalar_t__ GDI_OBJECT_TYPE_BITMAP ;
 int * GetStockObject (int ) ;
 int * SelectObject (int ,int *) ;
 int hdc1 ;
 int hdc2 ;
 int ok (int,char*) ;
 int printf (char*) ;

__attribute__((used)) static void
Test_Bitmap()
{
    HBITMAP hbmp, hbmpInvalid, hbmpOld;
 BYTE bmBits[4] = {0};
 HDC hdcTmp;

 hbmp = CreateBitmap(2, 2, 1, 1, &bmBits);
 hbmpInvalid = CreateBitmap(2, 2, 1, 4, &bmBits);
 if (!hbmp || !hbmpInvalid)
 {
     printf("couldn't create bitmaps, skipping\n");
     return;
 }

    hbmpOld = SelectObject(hdc1, hbmp);
    ok(GDI_HANDLE_GET_TYPE(hbmpOld) == GDI_OBJECT_TYPE_BITMAP, "wrong type\n");


    ok(SelectObject(hdc1, hbmpInvalid) == ((void*)0), "should fail\n");


    hbmpOld = SelectObject(hdc1, hbmpOld);
    ok(hbmpOld == hbmp, "didn't get the right bitmap back.\n");


    hbmpOld = SelectObject(hdc1, hbmp);
    ok(SelectObject(hdc2, hbmp) == ((void*)0), "Should fail.\n");


    hbmpOld = SelectObject(hdc1, hbmp);
    ok(hbmpOld == hbmp, "didn't get the right bitmap back.\n");
    SelectObject(hdc1, GetStockObject(DEFAULT_BITMAP));


    hdcTmp = CreateCompatibleDC(((void*)0));
    hbmpOld = SelectObject(hdcTmp, hbmp);
    ok(hbmpOld == GetStockObject(DEFAULT_BITMAP), "didn't get the right bitmap back.\n");
    DeleteDC(hdcTmp);
    hbmpOld = SelectObject(hdc1, hbmp);
    ok(hbmpOld == GetStockObject(DEFAULT_BITMAP), "didn't get the right bitmap back.\n");

    DeleteObject(hbmp);
    DeleteObject(hbmpInvalid);
}
