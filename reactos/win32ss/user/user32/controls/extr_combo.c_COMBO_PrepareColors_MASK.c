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
struct TYPE_4__ {scalar_t__ self; int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  COLOR_GRAYTEXT ; 
 int /*<<< orphan*/  COLOR_WINDOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CTLCOLOREDIT ; 
 int /*<<< orphan*/  WM_CTLCOLORSTATIC ; 

__attribute__((used)) static HBRUSH FUNC6(
  LPHEADCOMBO lphc,
  HDC         hDC)
{
  HBRUSH  hBkgBrush;

  /*
   * Get the background brush for this control.
   */
  if (FUNC0(lphc))
  {
#ifdef __REACTOS__
    hBkgBrush = GetControlColor(lphc->owner, lphc->self, hDC, WM_CTLCOLORSTATIC);
#else
    hBkgBrush = (HBRUSH)FUNC4(lphc->owner, WM_CTLCOLORSTATIC,
				     (WPARAM)hDC, (LPARAM)lphc->self );
#endif
    /*
     * We have to change the text color since WM_CTLCOLORSTATIC will
     * set it to the "enabled" color. This is the same behavior as the
     * edit control
     */
    FUNC5(hDC, FUNC2(COLOR_GRAYTEXT));
  }
  else
  {
      /* FIXME: In which cases WM_CTLCOLORLISTBOX should be sent? */
#ifdef __REACTOS__
      hBkgBrush = GetControlColor(lphc->owner, lphc->self, hDC, WM_CTLCOLOREDIT);
#else
      hBkgBrush = (HBRUSH)FUNC4(lphc->owner, WM_CTLCOLOREDIT,
				       (WPARAM)hDC, (LPARAM)lphc->self );
#endif
  }

  /*
   * Catch errors.
   */
  if( !hBkgBrush )
    hBkgBrush = FUNC3(COLOR_WINDOW);

  return hBkgBrush;
}