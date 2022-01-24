#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  descr ;
struct TYPE_4__ {int nSize; } ;
typedef  TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int DWORD ;
typedef  int COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int CLR_INVALID ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    PIXELFORMATDESCRIPTOR descr;
    HDC hdc, hdcmem;
    DWORD bits[64];
    HBITMAP hbmp, oldhbmp;
    COLORREF col;
    int i, bitspixel;
    int ret, ret2;

    /* fill bitmap data with b&w pattern */
    for( i = 0; i < 64; i++) bits[i] = i & 1 ? 0 : 0xffffff;

    hdc = FUNC4(0);
    FUNC10( hdc != NULL, "CreateDC rets %p\n", hdc);
    bitspixel = FUNC5( hdc, BITSPIXEL);
    /* create a memory dc */
    hdcmem = FUNC1( hdc);
    FUNC10( hdcmem != NULL, "CreateCompatibleDC rets %p\n", hdcmem);

    /* test DescribePixelFormat with descr == NULL */
    ret2 = FUNC3(hdcmem, 0, sizeof(descr), NULL);
    FUNC10(ret2 > 0, "expected ret2 > 0, got %d\n", ret2);
    ret = FUNC3(hdcmem, 1, sizeof(descr), NULL);
    FUNC10(ret == ret2, "expected ret == %d, got %d\n", ret2, ret);
    ret = FUNC3(hdcmem, 0x10000, sizeof(descr), NULL);
    FUNC10(ret == ret2, "expected ret == %d, got %d\n", ret2, ret);

    /* test DescribePixelFormat with descr != NULL */
    FUNC9(&descr, 0, sizeof(descr));
    ret = FUNC3(hdcmem, 0, sizeof(descr), &descr);
    FUNC10(ret == 0, "expected ret == 0, got %d\n", ret);
    FUNC10(descr.nSize == 0, "expected descr.nSize == 0, got %d\n", descr.nSize);

    FUNC9(&descr, 0, sizeof(descr));
    ret = FUNC3(hdcmem, 1, sizeof(descr), &descr);
    FUNC10(ret == ret2, "expected ret == %d, got %d\n", ret2, ret);
    FUNC10(descr.nSize == sizeof(descr), "expected desc.nSize == sizeof(descr), got %d\n", descr.nSize);

    FUNC9(&descr, 0, sizeof(descr));
    ret = FUNC3(hdcmem, 0x10000, sizeof(descr), &descr);
    FUNC10(ret == 0, "expected ret == 0, got %d\n", ret);
    FUNC10(descr.nSize == 0, "expected descr.nSize == 0, got %d\n", descr.nSize);

    /* test monochrome bitmap: should always work */
    hbmp = FUNC0(32, 32, 1, 1, bits);
    FUNC10( hbmp != NULL, "CreateBitmap returns %p\n", hbmp);
    oldhbmp = FUNC8( hdcmem, hbmp);
    FUNC10( oldhbmp != NULL, "SelectObject returned NULL\n" ); /* a memdc always has a bitmap selected */
    col = FUNC6( hdcmem, 0, 0);
    FUNC10( col == 0xffffff, "GetPixel returned %08x, expected 00ffffff\n", col);
    col = FUNC6( hdcmem, 1, 1);
    FUNC10( col == 0x000000, "GetPixel returned %08x, expected 00000000\n", col);
    col = FUNC6( hdcmem, 100, 1);
    FUNC10( col == CLR_INVALID, "GetPixel returned %08x, expected ffffffff\n", col);
    FUNC8( hdcmem, oldhbmp);
    FUNC2( hbmp);

    /* test with 2 bits color depth, not likely to succeed */
    hbmp = FUNC0(16, 16, 1, 2, bits);
    FUNC10( hbmp != NULL, "CreateBitmap returns %p\n", hbmp);
    oldhbmp = FUNC8( hdcmem, hbmp);
    if( bitspixel != 2)
        FUNC10( !oldhbmp, "SelectObject of a bitmap with 2 bits/pixel should return  NULL\n");
    if( oldhbmp) FUNC8( hdcmem, oldhbmp);
    FUNC2( hbmp);

    /* test with 16 bits color depth, might succeed */
    hbmp = FUNC0(6, 6, 1, 16, bits);
    FUNC10( hbmp != NULL, "CreateBitmap returns %p\n", hbmp);
    oldhbmp = FUNC8( hdcmem, hbmp);
    if( bitspixel == 16) {
        FUNC10( oldhbmp != NULL, "SelectObject returned NULL\n" );
        col = FUNC6( hdcmem, 0, 0);
        FUNC10( col == 0xffffff,
            "GetPixel of a bitmap with 16 bits/pixel returned %08x, expected 00ffffff\n", col);
        col = FUNC6( hdcmem, 1, 1);
        FUNC10( col == 0x000000,
            "GetPixel of a bitmap with 16 bits/pixel returned returned %08x, expected 00000000\n", col);
    }
    if( oldhbmp) FUNC8( hdcmem, oldhbmp);
    FUNC2( hbmp);

    /* test with 32 bits color depth, probably succeed */
    hbmp = FUNC0(4, 4, 1, 32, bits);
    FUNC10( hbmp != NULL, "CreateBitmap returns %p\n", hbmp);
    oldhbmp = FUNC8( hdcmem, hbmp);
    if( bitspixel == 32) {
        FUNC10( oldhbmp != NULL, "SelectObject returned NULL\n" );
        col = FUNC6( hdcmem, 0, 0);
        FUNC10( col == 0xffffff,
            "GetPixel of a bitmap with 32 bits/pixel returned %08x, expected 00ffffff\n", col);
        col = FUNC6( hdcmem, 1, 1);
        FUNC10( col == 0x000000,
            "GetPixel of a bitmap with 32 bits/pixel returned returned %08x, expected 00000000\n", col);
    }
    if( oldhbmp) FUNC8( hdcmem, oldhbmp);
    FUNC2( hbmp);
    FUNC7( 0, hdc );
}