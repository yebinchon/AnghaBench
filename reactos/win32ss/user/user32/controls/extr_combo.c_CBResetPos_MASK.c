#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int wState; int /*<<< orphan*/  self; int /*<<< orphan*/  hWndLBox; int /*<<< orphan*/  hWndEdit; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__* LPHEADCOMBO ;
typedef  int BOOL ;

/* Variables and functions */
 int CBF_DROPPED ; 
 int CBF_EDIT ; 
 int CBF_NOREDRAW ; 
 scalar_t__ CBS_SIMPLE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int RDW_ERASE ; 
 int RDW_INVALIDATE ; 
 int RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOREDRAW ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
  LPHEADCOMBO lphc,
  const RECT  *rectEdit,
  const RECT  *rectLB,
  BOOL        bRedraw)
{
   BOOL	bDrop = (FUNC0(lphc) != CBS_SIMPLE);

   /* NOTE: logs sometimes have WM_LBUTTONUP before a cascade of
    * sizing messages */

   if( lphc->wState & CBF_EDIT )
     FUNC2( lphc->hWndEdit, 0,
		   rectEdit->left, rectEdit->top,
		   rectEdit->right - rectEdit->left,
		   rectEdit->bottom - rectEdit->top,
                       SWP_NOZORDER | SWP_NOACTIVATE | ((bDrop) ? SWP_NOREDRAW : 0) );

   FUNC2( lphc->hWndLBox, 0,
		 rectLB->left, rectLB->top,
                 rectLB->right - rectLB->left,
		 rectLB->bottom - rectLB->top,
		   SWP_NOACTIVATE | SWP_NOZORDER | ((bDrop) ? SWP_NOREDRAW : 0) );

   if( bDrop )
   {
       if( lphc->wState & CBF_DROPPED )
       {
           lphc->wState &= ~CBF_DROPPED;
           FUNC3( lphc->hWndLBox, SW_HIDE );
       }

       if( bRedraw && !(lphc->wState & CBF_NOREDRAW) )
           FUNC1( lphc->self, NULL, 0,
                           RDW_INVALIDATE | RDW_ERASE | RDW_UPDATENOW );
   }
}