#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IImageList ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HIMAGELIST ;
typedef  scalar_t__ HICON ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  ILC_COLOR16 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  icon_bits ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    HRESULT hr;

    HICON hicon1;
    HICON hicon2;
    HICON hicon3;

    int ret;

    /* create an imagelist to play with */
    himl = FUNC6(84, 84, ILC_COLOR16, 0, 3);
    FUNC5(himl != 0,"failed to create imagelist\n");

    imgl = (IImageList *) himl;

    /* load the icons to add to the image list */
    hicon1 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC5(hicon1 != 0, "no hicon1\n");
    hicon2 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC5(hicon2 != 0, "no hicon2\n");
    hicon3 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC5(hicon3 != 0, "no hicon3\n");

    /* remove when nothing exists */
    hr = FUNC3(imgl, 0);
    FUNC5(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    /* removing everything from an empty imagelist should succeed */
    hr = FUNC3(imgl, -1);
    FUNC5(hr == S_OK, "removed nonexistent icon\n");

    /* add three */
    ret = -1;
    FUNC5( FUNC4(imgl, -1, hicon1, &ret) == S_OK && (ret == 0),"failed to add icon1\n");
    ret = -1;
    FUNC5( FUNC4(imgl, -1, hicon2, &ret) == S_OK && (ret == 1),"failed to add icon2\n");
    ret = -1;
    FUNC5( FUNC4(imgl, -1, hicon3, &ret) == S_OK && (ret == 2),"failed to add icon3\n");

    /* remove an index out of range */
    FUNC5( FUNC3(imgl, 4711) == E_INVALIDARG, "got 0x%08x\n", hr);

    /* remove three */
    FUNC5( FUNC3(imgl,0) == S_OK, "can't remove 0\n");
    FUNC5( FUNC3(imgl,0) == S_OK, "can't remove 0\n");
    FUNC5( FUNC3(imgl,0) == S_OK, "can't remove 0\n");

    /* remove one extra */
    FUNC5( FUNC3(imgl, 0) == E_INVALIDARG, "got 0x%08x\n", hr);

    FUNC2(imgl);
    FUNC5(FUNC1(hicon1),"icon 1 wasn't deleted\n");
    FUNC5(FUNC1(hicon2),"icon 2 wasn't deleted\n");
    FUNC5(FUNC1(hicon3),"icon 3 wasn't deleted\n");
}