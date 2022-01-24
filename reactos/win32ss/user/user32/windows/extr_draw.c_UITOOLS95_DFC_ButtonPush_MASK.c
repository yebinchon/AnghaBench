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
typedef  int UINT ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/ * LPRECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BF_ADJUST ; 
 int BF_MIDDLE ; 
 int BF_MONO ; 
 int BF_RECT ; 
 int BF_SOFT ; 
 int /*<<< orphan*/  COLOR_BTNFACE ; 
 int DFCS_ADJUSTRECT ; 
 int DFCS_CHECKED ; 
 int DFCS_FLAT ; 
 int DFCS_MONO ; 
 int DFCS_PUSHED ; 
 int EDGE_RAISED ; 
 int EDGE_SUNKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC5(HDC dc, LPRECT r, UINT uFlags)
{
    UINT edge;
    RECT myr = *r;

    if(uFlags & (DFCS_PUSHED | DFCS_CHECKED | DFCS_FLAT))
        edge = EDGE_SUNKEN;
    else
        edge = EDGE_RAISED;

    if(uFlags & DFCS_CHECKED)
    {
        if(uFlags & DFCS_MONO)
            FUNC3(dc, &myr, edge, BF_MONO|BF_RECT|BF_ADJUST, 1);
        else
            FUNC3(dc, &myr, edge, (uFlags&DFCS_FLAT)|BF_RECT|BF_SOFT|BF_ADJUST, 1);

        FUNC4( dc, &myr );
    }
    else
    {
        if(uFlags & DFCS_MONO)
        {
            FUNC3(dc, &myr, edge, BF_MONO|BF_RECT|BF_ADJUST, 1);
            FUNC0(dc, &myr, FUNC1(COLOR_BTNFACE));
        }
        else
        {
            FUNC3(dc, r, edge, (uFlags&DFCS_FLAT) | BF_MIDDLE | BF_RECT | BF_SOFT, 1);
        }
    }

    /* Adjust rectangle if asked */
    if(uFlags & DFCS_ADJUSTRECT)
        FUNC2(r, -2, -2);

    return TRUE;
}