#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wState; int /*<<< orphan*/  hWndLBox; } ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int CBF_BUTTONDOWN ; 
 int CBF_CAPTURE ; 
 int CBF_NOLBSELECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ CBS_DROPDOWN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC6( LPHEADCOMBO lphc )
{
   if( lphc->wState & CBF_CAPTURE )
   {
       lphc->wState &= ~CBF_CAPTURE;
       if( FUNC3(lphc) == CBS_DROPDOWN )
       {
	   INT index = FUNC2( lphc, TRUE );
	   /* Update edit only if item is in the list */
	   if(index >= 0)
	   {
	       lphc->wState |= CBF_NOLBSELECT;
	       FUNC1( lphc, index );
	       lphc->wState &= ~CBF_NOLBSELECT;
	   }
       }
       FUNC4();
       FUNC5(lphc->hWndLBox);
   }

   if( lphc->wState & CBF_BUTTONDOWN )
   {
       lphc->wState &= ~CBF_BUTTONDOWN;
       FUNC0( lphc );
   }
}