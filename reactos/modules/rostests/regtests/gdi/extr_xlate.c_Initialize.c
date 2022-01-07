
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CreateBitmap (int,int,int,int,int ) ;
 scalar_t__ CreateCompatibleBitmap (int ,int,int) ;
 void* CreateCompatibleDC (int ) ;
 int GetDC (int ) ;
 int GetRealColorDepth () ;
 int ajBits1 ;
 int ajBits16 ;
 int ajBits24 ;
 int ajBits32 ;
 int ajBits8 ;
 scalar_t__ hbmp16bpp_a ;
 scalar_t__ hbmp16bpp_b ;
 scalar_t__ hbmp1bpp_a ;
 scalar_t__ hbmp1bpp_b ;
 scalar_t__ hbmp24bpp_a ;
 scalar_t__ hbmp24bpp_b ;
 scalar_t__ hbmp32bpp_a ;
 scalar_t__ hbmp32bpp_b ;
 scalar_t__ hbmp8bpp_a ;
 scalar_t__ hbmp8bpp_b ;
 scalar_t__ hbmpCompat ;
 void* hdcDst ;
 void* hdcSrc ;
 int iDcFormat ;
 int ok (int,char*) ;
 int printf (char*,int ) ;

__attribute__((used)) static
void
Initialize()
{
    hdcSrc = CreateCompatibleDC(0);
    hdcDst = CreateCompatibleDC(0);

    hbmpCompat = CreateCompatibleBitmap(GetDC(0), 4, 2);
    ok(hbmpCompat != 0, "CreateCompatibleBitmap failed\n");

    iDcFormat = GetRealColorDepth();
    printf("got iDcFormat = %ld\n", iDcFormat);

    hbmp1bpp_a = CreateBitmap(4, 2, 1, 1, ajBits1);
    ok(hbmp1bpp_a != 0, "CreateBitmap failed\n");

    hbmp1bpp_b = CreateBitmap(4, 2, 1, 1, ajBits1);
    ok(hbmp1bpp_b != 0, "CreateBitmap failed\n");

    hbmp8bpp_a = CreateBitmap(4, 2, 1, 8, ajBits8);
    ok(hbmp8bpp_a != 0, "CreateBitmap failed\n");

    hbmp8bpp_b = CreateBitmap(4, 2, 1, 8, ajBits8);
    ok(hbmp8bpp_b != 0, "CreateBitmap failed\n");

    hbmp16bpp_a = CreateBitmap(4, 2, 1, 16, ajBits16);
    ok(hbmp16bpp_a != 0, "CreateBitmap failed\n");

    hbmp16bpp_b = CreateBitmap(4, 2, 1, 16, ajBits16);
    ok(hbmp16bpp_b != 0, "CreateBitmap failed\n");

    hbmp24bpp_a = CreateBitmap(4, 2, 1, 24, ajBits24);
    ok(hbmp24bpp_a != 0, "CreateBitmap failed\n");

    hbmp24bpp_b = CreateBitmap(4, 2, 1, 24, ajBits24);
    ok(hbmp24bpp_b != 0, "CreateBitmap failed\n");

    hbmp32bpp_a = CreateBitmap(4, 2, 1, 32, ajBits32);
    ok(hbmp32bpp_a != 0, "CreateBitmap failed\n");

    hbmp32bpp_b = CreateBitmap(4, 2, 1, 32, ajBits32);
    ok(hbmp32bpp_b != 0, "CreateBitmap failed\n");

}
