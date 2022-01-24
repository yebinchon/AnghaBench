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
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int mdiFlags; int /*<<< orphan*/  sbRecalc; } ;
typedef  TYPE_1__ MDICLIENTINFO ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int MDIF_NEEDUPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_MDICALCCHILDSCROLL ; 

__attribute__((used)) static void FUNC1(HWND hwnd, MDICLIENTINFO* ci, WORD recalc)
{
    if( !(ci->mdiFlags & MDIF_NEEDUPDATE) )
    {
	ci->mdiFlags |= MDIF_NEEDUPDATE;
	FUNC0( hwnd, WM_MDICALCCHILDSCROLL, 0, 0);
    }
    ci->sbRecalc = recalc;
}