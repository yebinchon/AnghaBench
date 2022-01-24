#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int wState; int /*<<< orphan*/  self; int /*<<< orphan*/  textRect; int /*<<< orphan*/  buttonRect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int CBF_EDIT ; 
 int CBF_NOREDRAW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ CBS_DROPDOWNLIST ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  COLOR_WINDOW ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC15(LPHEADCOMBO lphc, HDC hParamDC)
{
  PAINTSTRUCT ps;
  HDC 	hDC;

  hDC = (hParamDC) ? hParamDC
		   : FUNC0( lphc->self, &ps);

  FUNC14("hdc=%p\n", hDC);

  if( hDC && !(lphc->wState & CBF_NOREDRAW) )
  {
      HBRUSH	hPrevBrush, hBkgBrush;

      /*
       * Retrieve the background brush and select it in the
       * DC.
       */
      hBkgBrush = FUNC5(lphc, hDC);

      hPrevBrush = FUNC13( hDC, hBkgBrush );
      if (!(lphc->wState & CBF_EDIT))
        FUNC8(hDC, &lphc->textRect, hBkgBrush);

      /*
       * In non 3.1 look, there is a sunken border on the combobox
       */
      FUNC1(lphc->self, lphc, hDC);

      if( !FUNC12(&lphc->buttonRect) )
      {
	FUNC2(lphc, hDC, lphc->buttonRect);
      }

      /* paint the edit control padding area */
      if (FUNC4(lphc) != CBS_DROPDOWNLIST)
      {
          RECT rPadEdit = lphc->textRect;

          FUNC11(&rPadEdit, FUNC6(), FUNC6());

          FUNC9( hDC, &rPadEdit, FUNC10(COLOR_WINDOW) );
      }

      if( !(lphc->wState & CBF_EDIT) )
	FUNC3( lphc, hDC );

      if( hPrevBrush )
	FUNC13( hDC, hPrevBrush );
  }

  if( !hParamDC )
    FUNC7(lphc->self, &ps);

  return 0;
}