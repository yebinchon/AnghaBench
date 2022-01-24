#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_2__ {int /*<<< orphan*/  hbrGray; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_3DFACE ; 
 int /*<<< orphan*/  COLOR_3DHILIGHT ; 
 int /*<<< orphan*/  COLOR_SCROLLBAR ; 
 int /*<<< orphan*/  COLOR_WINDOW ; 
 int /*<<< orphan*/  COLOR_WINDOWTEXT ; 
 scalar_t__ CTLCOLOR_EDIT ; 
 scalar_t__ CTLCOLOR_LISTBOX ; 
 scalar_t__ CTLCOLOR_SCROLLBAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* gpsi ; 

HBRUSH
FUNC5(HDC hDC, UINT ctlType)
{
  if (ctlType == CTLCOLOR_SCROLLBAR)
  {
      HBRUSH hb = FUNC1(COLOR_SCROLLBAR);
      COLORREF bk = FUNC0(COLOR_3DHILIGHT);
      FUNC3(hDC, FUNC0(COLOR_3DFACE));
      FUNC2(hDC, bk);

      /* if COLOR_WINDOW happens to be the same as COLOR_3DHILIGHT
       * we better use 0x55aa bitmap brush to make scrollbar's background
       * look different from the window background.
       */
      if ( bk == FUNC0(COLOR_WINDOW))
          return gpsi->hbrGray;

      FUNC4( hb );
      return hb;
  }

  FUNC3(hDC, FUNC0(COLOR_WINDOWTEXT));

  if ((ctlType == CTLCOLOR_EDIT) || (ctlType == CTLCOLOR_LISTBOX))
  {
      FUNC2(hDC, FUNC0(COLOR_WINDOW));
  }
  else
  {
      FUNC2(hDC, FUNC0(COLOR_3DFACE));
      return FUNC1(COLOR_3DFACE);
  }

  return FUNC1(COLOR_WINDOW);
}