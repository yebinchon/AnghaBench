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
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GA_PARENT ; 
 int /*<<< orphan*/  GA_ROOT ; 
 int /*<<< orphan*/  GA_ROOTOWNER ; 
 int /*<<< orphan*/  GWLP_HWNDPARENT ; 
 int /*<<< orphan*/  GW_OWNER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( HWND hwnd, HWND ga_parent, HWND gwl_parent, HWND get_parent,
                           HWND gw_owner, HWND ga_root, HWND ga_root_owner )
{
    HWND res;

    if (&pGetAncestor)
    {
        res = FUNC4( hwnd, GA_PARENT );
        FUNC3( res == ga_parent, "Wrong result for GA_PARENT %p expected %p\n", res, ga_parent );
    }
    res = (HWND)FUNC2( hwnd, GWLP_HWNDPARENT );
    FUNC3( res == gwl_parent, "Wrong result for GWL_HWNDPARENT %p expected %p\n", res, gwl_parent );
    res = FUNC0( hwnd );
    FUNC3( res == get_parent, "Wrong result for GetParent %p expected %p\n", res, get_parent );
    res = FUNC1( hwnd, GW_OWNER );
    FUNC3( res == gw_owner, "Wrong result for GW_OWNER %p expected %p\n", res, gw_owner );
    if (&pGetAncestor)
    {
        res = FUNC4( hwnd, GA_ROOT );
        FUNC3( res == ga_root, "Wrong result for GA_ROOT %p expected %p\n", res, ga_root );
        res = FUNC4( hwnd, GA_ROOTOWNER );
        FUNC3( res == ga_root_owner, "Wrong result for GA_ROOTOWNER %p expected %p\n", res, ga_root_owner );
    }
}