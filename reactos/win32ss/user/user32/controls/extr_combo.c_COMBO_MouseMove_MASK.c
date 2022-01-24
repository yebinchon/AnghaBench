#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_10__ {int wState; int /*<<< orphan*/  hWndLBox; int /*<<< orphan*/  self; int /*<<< orphan*/  buttonRect; } ;
struct TYPE_9__ {short x; short y; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CBF_BUTTONDOWN ; 
 int CBF_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ CBS_DROPDOWN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_LBUTTONDOWN ; 

__attribute__((used)) static void FUNC10( LPHEADCOMBO lphc, WPARAM wParam, LPARAM lParam )
{
   POINT  pt;
   RECT   lbRect;

   pt.x = (short)FUNC5(lParam);
   pt.y = (short)FUNC4(lParam);

   if( lphc->wState & CBF_BUTTONDOWN )
   {
     BOOL bButton;

     bButton = FUNC7(&lphc->buttonRect, pt);

     if( !bButton )
     {
       lphc->wState &= ~CBF_BUTTONDOWN;
       FUNC0( lphc );
     }
   }

   FUNC3( lphc->hWndLBox, &lbRect );
   FUNC6( lphc->self, lphc->hWndLBox, &pt, 1 );
   if( FUNC7(&lbRect, pt) )
   {
       lphc->wState &= ~CBF_CAPTURE;
       FUNC8();
       if( FUNC2(lphc) == CBS_DROPDOWN ) FUNC1( lphc, TRUE );

       /* hand over pointer tracking */
       FUNC9(lphc->hWndLBox, WM_LBUTTONDOWN, wParam, lParam);
   }
}