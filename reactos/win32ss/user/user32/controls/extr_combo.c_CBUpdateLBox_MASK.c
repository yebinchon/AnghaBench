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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  hWndLBox; int /*<<< orphan*/  hWndEdit; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int LB_ERR ; 
 int /*<<< orphan*/  LB_FINDSTRING ; 
 int /*<<< orphan*/  LB_SETCARETINDEX ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETTOPINDEX ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  WM_GETTEXTLENGTH ; 

__attribute__((used)) static INT FUNC6( LPHEADCOMBO lphc, BOOL bSelect )
{
   INT	length, idx;
   LPWSTR pText = NULL;

   idx = LB_ERR;
   length = FUNC4( lphc->hWndEdit, WM_GETTEXTLENGTH, 0, 0 );

   if( length > 0 )
       pText = FUNC2( FUNC0(), 0, (length + 1) * sizeof(WCHAR));

   FUNC5("\t edit text length %i\n", length );

   if( pText )
   {
       FUNC1( lphc->hWndEdit, pText, length + 1);
       idx = FUNC4(lphc->hWndLBox, LB_FINDSTRING, (WPARAM)(-1), (LPARAM)pText);
       FUNC3( FUNC0(), 0, pText );
   }

   FUNC4(lphc->hWndLBox, LB_SETCURSEL, (WPARAM)(bSelect ? idx : -1), 0);

   /* probably superfluous but Windows sends this too */
   FUNC4(lphc->hWndLBox, LB_SETCARETINDEX, (WPARAM)(idx < 0 ? 0 : idx), 0);
   FUNC4(lphc->hWndLBox, LB_SETTOPINDEX, (WPARAM)(idx < 0 ? 0 : idx), 0);

   return idx;
}