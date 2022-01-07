
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HBITMAP ;


 scalar_t__ GdiConvertBitmap (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiConvertBitmap()
{
    ok(GdiConvertBitmap((HBITMAP)-1) == (HBITMAP)-1, "\n");
    ok(GdiConvertBitmap((HBITMAP)0) == (HBITMAP)0, "\n");
    ok(GdiConvertBitmap((HBITMAP)1) == (HBITMAP)1, "\n");
    ok(GdiConvertBitmap((HBITMAP)2) == (HBITMAP)2, "\n");
}
