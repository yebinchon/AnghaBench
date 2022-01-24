#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_12__ {int wState; int dwStyle; void* editHeight; void* fixedOwnerDrawHeight; int /*<<< orphan*/  owner; int /*<<< orphan*/  self; scalar_t__ hFont; } ;
struct TYPE_11__ {int itemID; void* itemHeight; scalar_t__ itemData; int /*<<< orphan*/  itemWidth; void* CtlID; void* CtlType; } ;
struct TYPE_10__ {int /*<<< orphan*/  right; } ;
struct TYPE_9__ {void* tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ MEASUREITEMSTRUCT ;
typedef  TYPE_4__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int CBF_MEASUREITEM ; 
 int CBS_OWNERDRAWFIXED ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* ODT_COMBOBOX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_MEASUREITEM ; 

__attribute__((used)) static INT FUNC8(
  HWND        hwnd,
  LPHEADCOMBO lphc)
{
  INT iTextItemHeight;

  if( lphc->editHeight ) /* explicitly set height */
  {
    iTextItemHeight = lphc->editHeight;
  }
  else
  {
    TEXTMETRICW tm;
    HDC         hDC       = FUNC2(hwnd);
    HFONT       hPrevFont = 0;
    INT         baseUnitY;

    if (lphc->hFont)
      hPrevFont = FUNC6( hDC, lphc->hFont );

    FUNC3(hDC, &tm);

    baseUnitY = tm.tmHeight;

    if( hPrevFont )
      FUNC6( hDC, hPrevFont );

    FUNC5(hwnd, hDC);

    iTextItemHeight = baseUnitY + 4;
  }

  /*
   * Check the ownerdraw case if we haven't asked the parent the size
   * of the item yet.
   */
  if ( FUNC0(lphc) &&
       (lphc->wState & CBF_MEASUREITEM) )
  {
    MEASUREITEMSTRUCT measureItem;
    RECT              clientRect;
    INT               originalItemHeight = iTextItemHeight;
    UINT id = (UINT)FUNC4( lphc->self, GWLP_ID );

    /*
     * We use the client rect for the width of the item.
     */
    FUNC1(hwnd, &clientRect);

    lphc->wState &= ~CBF_MEASUREITEM;

    /*
     * Send a first one to measure the size of the text area
     */
    measureItem.CtlType    = ODT_COMBOBOX;
    measureItem.CtlID      = id;
    measureItem.itemID     = -1;
    measureItem.itemWidth  = clientRect.right;
    measureItem.itemHeight = iTextItemHeight - 6; /* ownerdrawn cb is taller */
    measureItem.itemData   = 0;
    FUNC7(lphc->owner, WM_MEASUREITEM, id, (LPARAM)&measureItem);
    iTextItemHeight = 6 + measureItem.itemHeight;

    /*
     * Send a second one in the case of a fixed ownerdraw list to calculate the
     * size of the list items. (we basically do this on behalf of the listbox)
     */
    if (lphc->dwStyle & CBS_OWNERDRAWFIXED)
    {
      measureItem.CtlType    = ODT_COMBOBOX;
      measureItem.CtlID      = id;
      measureItem.itemID     = 0;
      measureItem.itemWidth  = clientRect.right;
      measureItem.itemHeight = originalItemHeight;
      measureItem.itemData   = 0;
      FUNC7(lphc->owner, WM_MEASUREITEM, id, (LPARAM)&measureItem);
      lphc->fixedOwnerDrawHeight = measureItem.itemHeight;
    }

    /*
     * Keep the size for the next time
     */
    lphc->editHeight = iTextItemHeight;
  }

  return iTextItemHeight;
}