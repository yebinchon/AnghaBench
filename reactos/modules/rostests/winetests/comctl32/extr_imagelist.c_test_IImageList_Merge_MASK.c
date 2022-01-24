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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IImageList ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IImageList ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  icon_bits ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    HIMAGELIST himl1, himl2;
    IImageList *imgl1, *imgl2, *merge;
    HICON hicon1;
    HWND hwnd = FUNC6();
    HRESULT hr;
    int ret;

    himl1 = FUNC8(32,32,0,0,3);
    FUNC7(himl1 != NULL,"failed to create himl1\n");

    himl2 = FUNC8(32,32,0,0,3);
    FUNC7(himl2 != NULL,"failed to create himl2\n");

    hicon1 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC7(hicon1 != NULL, "failed to create hicon1\n");

    if (!himl1 || !himl2 || !hicon1)
        return;

    /* cast to IImageList */
    imgl1 = (IImageList *) himl1;
    imgl2 = (IImageList *) himl2;

    ret = -1;
    FUNC7( FUNC5(imgl2, -1, hicon1, &ret) == S_OK && (ret == 0),"add icon1 to himl2 failed\n");

if (0)
{
    /* null cases that crash on native */
    FUNC3(imgl1, -1, NULL, 0, 0, 0, &IID_IImageList, (void**)&merge);
    FUNC3(imgl1, -1, (IUnknown*) imgl2, 0, 0, 0, &IID_IImageList, NULL);
}

    /* If himl1 has no images, merge still succeeds */
    hr = FUNC3(imgl1, -1, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl1,-1 failed\n");
    if (hr == S_OK) FUNC4(merge);

    hr = FUNC3(imgl1, 0, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl1,0 failed\n");
    if (hr == S_OK) FUNC4(merge);

    /* Same happens if himl2 is empty */
    FUNC4(imgl2);
    himl2 = FUNC8(32,32,0,0,3);
    FUNC7(himl2 != NULL,"failed to recreate himl2\n");

    imgl2 = (IImageList *) himl2;

    hr = FUNC3(imgl1, -1, (IUnknown *) imgl2, -1, 0, 0, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl2,-1 failed\n");
    if (hr == S_OK) FUNC4(merge);

    hr = FUNC3(imgl1, -1, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl2,0 failed\n");
    if (hr == S_OK) FUNC4(merge);

    /* Now try merging an image with itself */
    ret = -1;
    FUNC7( FUNC5(imgl2, -1, hicon1, &ret) == S_OK && (ret == 0),"re-add icon1 to himl2 failed\n");

    hr = FUNC3(imgl2, 0, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl2 with itself failed\n");
    if (hr == S_OK) FUNC4(merge);

    /* Try merging 2 different image lists */
    ret = -1;
    FUNC7( FUNC5(imgl1, -1, hicon1, &ret) == S_OK && (ret == 0),"add icon1 to himl1 failed\n");

    hr = FUNC3(imgl1, 0, (IUnknown *) imgl2, 0, 0, 0, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl1 with himl2 failed\n");
    if (hr == S_OK) FUNC4(merge);

    hr = FUNC3(imgl1, 0, (IUnknown *) imgl2, 0, 8, 16, &IID_IImageList, (void **) &merge);
    FUNC7(hr == S_OK, "merge himl1 with himl2 8,16 failed\n");
    if (hr == S_OK) FUNC4(merge);

    FUNC4(imgl1);
    FUNC4(imgl2);

    FUNC1(hicon1);
    FUNC2(hwnd);
}