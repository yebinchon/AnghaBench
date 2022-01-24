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
typedef  int INT ;
typedef  int /*<<< orphan*/  IImageList ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HIMAGELIST ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ILC_COLOR16 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    HRESULT hr;
    INT ret;

    /* create an imagelist to play with */
    himl = FUNC4(84, 84, ILC_COLOR16, 0, 3);
    FUNC3(himl != 0,"failed to create imagelist\n");

    imgl = (IImageList *) himl;

    /* check SetImageCount/GetImageCount */
    hr = FUNC2(imgl, 3);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    ret = 0;
    hr = FUNC0(imgl, &ret);
    FUNC3(hr == S_OK && ret == 3, "invalid image count after increase\n");
    hr = FUNC2(imgl, 1);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    ret = 0;
    hr = FUNC0(imgl, &ret);
    FUNC3(hr == S_OK && ret == 1, "invalid image count after decrease to 1\n");
    hr = FUNC2(imgl, 0);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    ret = -1;
    hr = FUNC0(imgl, &ret);
    FUNC3(hr == S_OK && ret == 0, "invalid image count after decrease to 0\n");

    FUNC1(imgl);
}