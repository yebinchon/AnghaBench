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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATCOPY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gpulTargetBits ; 
 int /*<<< orphan*/  hdcTarget ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6()
{
    ULONG aulBits[2] = {0x5555AAAA, 0};
    HBITMAP hbmp;
    HBRUSH hbr;
    BOOL ret;

    hbmp = FUNC0(2, 2, 1, 1, aulBits);
    if (!hbmp)
    {
        FUNC5("Couln not create a bitmap\n");
        return;
    }

    hbr = FUNC1(hbmp);
    if (!hbr)
    {
        FUNC5("Couln not create a bitmap\n");
        return;
    }

    if (!FUNC3(hdcTarget, hbr))
    {
        FUNC5("failed to select pattern brush\n");
        return;
    }

    ret = FUNC2(hdcTarget, 0, 0, 2, 2, PATCOPY);
    FUNC4(ret, 1);
    FUNC4(gpulTargetBits[0], 0xffffff);
    FUNC4(gpulTargetBits[1], 0);
    FUNC4(gpulTargetBits[16], 0);
    FUNC4(gpulTargetBits[17], 0xffffff);
    //printf("0x%lx, 0x%lx\n", gpulTargetBits[0], gpulTargetBits[1]);

    ret = FUNC2(hdcTarget, 1, 0, 2, 2, PATCOPY);
    FUNC4(ret, 1);
    FUNC4(gpulTargetBits[0], 0xffffff);
    FUNC4(gpulTargetBits[1], 0);
    FUNC4(gpulTargetBits[2], 0xffffff);
    FUNC4(gpulTargetBits[16], 0);
    FUNC4(gpulTargetBits[17], 0xffffff);
    FUNC4(gpulTargetBits[18], 0);

}