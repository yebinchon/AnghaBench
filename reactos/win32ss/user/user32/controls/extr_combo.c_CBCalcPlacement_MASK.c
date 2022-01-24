#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ droppedWidth; } ;
struct TYPE_14__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__* LPRECT ;
typedef  TYPE_2__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ CBS_DROPDOWN ; 
 scalar_t__ CBS_DROPDOWNLIST ; 
 scalar_t__ CBS_SIMPLE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXVSCROLL ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(
  HWND        hwnd,
  LPHEADCOMBO lphc,
  LPRECT      lprEdit,
  LPRECT      lprButton,
  LPRECT      lprLB)
{
  /*
   * Again, start with the client rectangle.
   */
  FUNC7(hwnd, lprEdit);

  /*
   * Remove the borders
   */
  FUNC9(lprEdit, -FUNC3(), -FUNC4());

  /*
   * Chop off the bottom part to fit with the height of the text area.
   */
  lprEdit->bottom = lprEdit->top + FUNC0(hwnd, lphc);

  /*
   * The button starts the same vertical position as the text area.
   */
  FUNC5(lprButton, lprEdit);

  /*
   * If the combobox is "simple" there is no button.
   */
  if( FUNC1(lphc) == CBS_SIMPLE )
    lprButton->left = lprButton->right = lprButton->bottom = 0;
  else
  {
    /*
     * Let's assume the combobox button is the same width as the
     * scrollbar button.
     * size the button horizontally and cut-off the text area.
     */
    lprButton->left = lprButton->right - FUNC8(SM_CXVSCROLL);
    lprEdit->right  = lprButton->left;
  }

  /*
   * In the case of a dropdown, there is an additional spacing between the
   * text area and the button.
   */
  if( FUNC1(lphc) == CBS_DROPDOWN )
  {
    lprEdit->right -= FUNC2();
  }

  /*
   * If we have an edit control, we space it away from the borders slightly.
   */
  if (FUNC1(lphc) != CBS_DROPDOWNLIST)
  {
    FUNC9(lprEdit, -FUNC6(), -FUNC6());
  }

  /*
   * Adjust the size of the listbox popup.
   */
  if( FUNC1(lphc) == CBS_SIMPLE )
  {
    /*
     * Use the client rectangle to initialize the listbox rectangle
     */
    FUNC7(hwnd, lprLB);

    /*
     * Then, chop-off the top part.
     */
    lprLB->top = lprEdit->bottom + FUNC4();
  }
  else
  {
    /*
     * Make sure the dropped width is as large as the combobox itself.
     */
    if (lphc->droppedWidth < (lprButton->right + FUNC3()))
    {
      lprLB->right  = lprLB->left + (lprButton->right + FUNC3());

      /*
       * In the case of a dropdown, the popup listbox is offset to the right.
       * so, we want to make sure it's flush with the right side of the
       * combobox
       */
      if( FUNC1(lphc) == CBS_DROPDOWN )
	lprLB->right -= FUNC2();
    }
    else
       lprLB->right = lprLB->left + lphc->droppedWidth;
  }

  /* don't allow negative window width */
  if (lprEdit->right < lprEdit->left)
    lprEdit->right = lprEdit->left;

  FUNC10("\ttext\t= (%s)\n", FUNC11(lprEdit));

  FUNC10("\tbutton\t= (%s)\n", FUNC11(lprButton));

  FUNC10("\tlbox\t= (%s)\n", FUNC11(lprLB));
}