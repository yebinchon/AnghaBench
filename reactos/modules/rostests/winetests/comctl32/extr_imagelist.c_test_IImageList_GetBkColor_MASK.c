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
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ILC_COLOR16 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    IImageList *imgl;
    HIMAGELIST himl;
    COLORREF color;
    HRESULT hr;

    himl = FUNC3(16, 16, ILC_COLOR16, 0, 3);
    imgl = (IImageList*)himl;

if (0)
{
    /* crashes on native */
    FUNC0(imgl, NULL);
}

    hr = FUNC0(imgl, &color);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);

    FUNC1(imgl);
}