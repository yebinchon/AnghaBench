#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int wState; int /*<<< orphan*/  hWndEdit; int /*<<< orphan*/  hWndLBox; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int CBF_FOCUSED ; 
 int CBF_NOEDITNOTIFY ; 
 int CBF_NOLBSELECT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_GETTEXTLEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 

__attribute__((used)) static void FUNC6( LPHEADCOMBO lphc , INT index )
{
   INT	length;
   LPWSTR pText = NULL;
   static const WCHAR empty_stringW[] = { 0 };

   FUNC5("\t %i\n", index );

   if( index >= 0 ) /* got an entry */
   {
       length = FUNC4(lphc->hWndLBox, LB_GETTEXTLEN, (WPARAM)index, 0);
       if( length != LB_ERR)
       {
	   if( (pText = FUNC2( FUNC1(), 0, (length + 1) * sizeof(WCHAR))) )
	   {
               FUNC4(lphc->hWndLBox, LB_GETTEXT, (WPARAM)index, (LPARAM)pText );
	   }
       }
   }

   if( FUNC0(lphc) )
   {
      lphc->wState |= (CBF_NOEDITNOTIFY | CBF_NOLBSELECT);
      FUNC4(lphc->hWndEdit, WM_SETTEXT, 0, pText ? (LPARAM)pText : (LPARAM)empty_stringW);
      lphc->wState &= ~(CBF_NOEDITNOTIFY | CBF_NOLBSELECT);
   }

   if( lphc->wState & CBF_FOCUSED )
      FUNC4(lphc->hWndEdit, EM_SETSEL, 0, (LPARAM)(-1));

   FUNC3( FUNC1(), 0, pText );
}