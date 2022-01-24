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
typedef  scalar_t__ UINT ;
typedef  int INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ILC_COLOR32 ; 
 int ILC_MASK ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LR_DEFAULTCOLOR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  hInstance ; 

HIMAGELIST
FUNC6(UINT StartResource,
              UINT EndResource,
              UINT Width,
              UINT Height)
{
    HICON hIcon;
    HIMAGELIST hImageList;
    UINT i;
    INT Ret;

    /* Create the toolbar icon image list */
    hImageList = FUNC2(Width,
                                  Height,
                                  ILC_MASK | ILC_COLOR32,
                                  EndResource - StartResource,
                                  0);
    if (hImageList == NULL)
        return NULL;

    /* Add all icons to the image list */
    for (i = StartResource; i <= EndResource; i++)
    {
        hIcon = (HICON)FUNC4(hInstance,
                                  FUNC5(i),
                                  IMAGE_ICON,
                                  Width,
                                  Height,
                                  LR_DEFAULTCOLOR);
        if (hIcon == NULL)
            goto fail;

        Ret = FUNC1(hImageList,
                                hIcon);
        if (Ret == -1)
            goto fail;

        FUNC0(hIcon);
    }

    return hImageList;

fail:
    FUNC3(hImageList);
    return NULL;
}