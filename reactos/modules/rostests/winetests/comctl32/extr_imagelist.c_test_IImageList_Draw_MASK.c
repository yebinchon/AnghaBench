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
typedef  int /*<<< orphan*/  imldp ;
struct TYPE_4__ {int y; int x; int /*<<< orphan*/  i; void* rgbFg; void* rgbBk; int /*<<< orphan*/  fStyle; scalar_t__ himl; int /*<<< orphan*/ * hdcDst; int /*<<< orphan*/  cbSize; } ;
typedef  TYPE_1__ IMAGELISTDRAWPARAMS ;
typedef  int /*<<< orphan*/  IImageList ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HIMAGELIST ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
 void* CLR_DEFAULT ; 
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ILC_COLOR16 ; 
 int /*<<< orphan*/  IMAGELISTDRAWPARAMS_V3_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  bitmap_bits ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 scalar_t__ FUNC15 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(void)
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

    hwndfortest = FUNC11();
    hdc = FUNC3(hwndfortest);
    FUNC14(hdc!=NULL, "couldn't get DC\n");

    /* create an imagelist to play with */
    himl = FUNC15(48, 48, ILC_COLOR16, 0, 3);
    FUNC14(himl!=0,"failed to create imagelist\n");

    imgl = (IImageList *) himl;

    /* load the icons to add to the image list */
    hbm1 = FUNC0(48, 48, 1, 1, bitmap_bits);
    FUNC14(hbm1 != 0, "no bitmap 1\n");
    hbm2 = FUNC0(48, 48, 1, 1, bitmap_bits);
    FUNC14(hbm2 != 0, "no bitmap 2\n");
    hbm3 = FUNC0(48, 48, 1, 1, bitmap_bits);
    FUNC14(hbm3 != 0, "no bitmap 3\n");

    /* add three */
    ret = -1;
    FUNC14( FUNC4(imgl, hbm1, 0, &ret) == S_OK && (ret == 0), "failed to add bitmap 1\n");
    ret = -1;
    FUNC14( FUNC4(imgl, hbm2, 0, &ret) == S_OK && (ret == 1), "failed to add bitmap 2\n");

    FUNC14( FUNC9(imgl, 3) == S_OK, "Setimage count failed\n");
    FUNC14( FUNC8(imgl, 2, hbm3, 0) == S_OK, "failed to replace bitmap 3\n");

if (0)
{
    /* crashes on native */
    FUNC5(imgl, NULL);
}

    FUNC13(&imldp, 0, sizeof (imldp));
    hr = FUNC5(imgl, &imldp);
    FUNC14( hr == E_INVALIDARG, "got 0x%08x\n", hr);

    imldp.cbSize = IMAGELISTDRAWPARAMS_V3_SIZE;
    imldp.hdcDst = hdc;
    imldp.himl = himl;

    FUNC12(hwndfortest);

    imldp.fStyle = SRCCOPY;
    imldp.rgbBk = CLR_DEFAULT;
    imldp.rgbFg = CLR_DEFAULT;
    imldp.y = 100;
    imldp.x = 100;
    FUNC14( FUNC5(imgl, &imldp) == S_OK, "should succeed\n");
    imldp.i ++;
    FUNC14( FUNC5(imgl, &imldp) == S_OK, "should succeed\n");
    imldp.i ++;
    FUNC14( FUNC5(imgl, &imldp) == S_OK, "should succeed\n");
    imldp.i ++;
    FUNC14( FUNC5(imgl, &imldp) == E_INVALIDARG, "should fail\n");

    /* remove three */
    FUNC14( FUNC7(imgl, 0) == S_OK, "removing 1st bitmap\n");
    FUNC14( FUNC7(imgl, 0) == S_OK, "removing 2nd bitmap\n");
    FUNC14( FUNC7(imgl, 0) == S_OK, "removing 3rd bitmap\n");

    /* destroy it */
    FUNC6(imgl);

    /* bitmaps should not be deleted by the imagelist */
    FUNC14(FUNC1(hbm1),"bitmap 1 can't be deleted\n");
    FUNC14(FUNC1(hbm2),"bitmap 2 can't be deleted\n");
    FUNC14(FUNC1(hbm3),"bitmap 3 can't be deleted\n");

    FUNC10(hwndfortest, hdc);
    FUNC2(hwndfortest);
}