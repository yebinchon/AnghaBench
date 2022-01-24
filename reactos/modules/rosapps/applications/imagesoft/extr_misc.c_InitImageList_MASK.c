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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ILC_COLOR24 ; 
 int ILC_MASK ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LR_LOADTRANSPARENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  TB_BMP_HEIGHT ; 
 int /*<<< orphan*/  TB_BMP_WIDTH ; 
 int /*<<< orphan*/  hInstance ; 

HIMAGELIST
FUNC7(UINT NumImages, UINT StartResource)
{
    HBITMAP hBitmap;
    HIMAGELIST hImageList;
    UINT i, k;
    INT Ret;
    FUNC0(Ret);

    /* Create the toolbar icon image list */
    hImageList = FUNC3(TB_BMP_WIDTH,
                                  TB_BMP_HEIGHT,
                                  ILC_MASK | ILC_COLOR24,
                                  NumImages,
                                  0);
    if (! hImageList)
        return NULL;

    /* Add all icons to the image list */
    for (i = StartResource, k = 0; k < NumImages; i++, k++)
    {
        hBitmap = FUNC4(hInstance,
                            FUNC5(i),
                            IMAGE_BITMAP,
                            TB_BMP_WIDTH,
                            TB_BMP_HEIGHT,
                            LR_LOADTRANSPARENT);

        Ret = FUNC2(hImageList,
                                  hBitmap,
                                  FUNC6(255, 255, 254));

        FUNC1(hBitmap);
    }

    return hImageList;

}