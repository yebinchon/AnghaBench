#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ hbmMask; int /*<<< orphan*/  hbmImage; } ;
typedef  TYPE_1__ IMAGEINFO ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ILC_COLOR ; 
 int ILC_COLOR16 ; 
 int ILC_COLOR24 ; 
 int ILC_COLOR32 ; 
 int ILC_COLOR4 ; 
 int ILC_COLOR8 ; 
 int ILC_COLORDDB ; 
 int ILC_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  icon_bits ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
    HIMAGELIST himl[8], hmerge;
    int sizes[] = { ILC_COLOR, ILC_COLOR | ILC_MASK, ILC_COLOR4, ILC_COLOR8, ILC_COLOR16, ILC_COLOR24, ILC_COLOR32, ILC_COLORDDB };
    HICON hicon1;
    IMAGEINFO info;
    int bpp, i, j;

    hicon1 = FUNC0(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    FUNC3(hicon1 != NULL, "failed to create hicon1\n");

    for (i = 0; i < 8; i++)
    {
        himl[i] = FUNC4(32, 32, sizes[i], 0, 3);
        FUNC3(himl[i] != NULL, "failed to create himl[%d]\n", i);
        FUNC3(0 == FUNC8(himl[i], -1, hicon1), "Failed to add icon1 to himl[%d].\n", i);
        if (i == 0 || i == 1 || i == 7)
        {
            FUNC6(himl[i], 0, &info);
            sizes[i] = FUNC2(info.hbmImage);
        }
    }
    FUNC1(hicon1);
    for (i = 0; i < 8; i++)
        for (j = 0; j < 8; j++)
        {
            hmerge = FUNC7(himl[i], 0, himl[j], 0, 0, 0);
            FUNC3(hmerge != NULL, "merge himl[%d], himl[%d] failed\n", i, j);

            FUNC6(hmerge, 0, &info);
            bpp = FUNC2(info.hbmImage);
            /* ILC_COLOR[X] is defined as [X] */
            if (i == 4 && j == 7)
                FUNC3(bpp == 16, /* merging ILC_COLOR16 with ILC_COLORDDB seems to be a special case */
                    "wrong biBitCount %d when merging lists %d (%d) and %d (%d)\n", bpp, i, sizes[i], j, sizes[j]);
            else
                FUNC3(bpp == (i > j ? sizes[i] : sizes[j]),
                    "wrong biBitCount %d when merging lists %d (%d) and %d (%d)\n", bpp, i, sizes[i], j, sizes[j]);
            FUNC3(info.hbmMask != 0, "Imagelist merged from %d and %d had no mask\n", i, j);

            FUNC5(hmerge);
        }

    for (i = 0; i < 8; i++)
        FUNC5(himl[i]);
}