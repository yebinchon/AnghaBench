#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int top; int bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_10__ {int itemID; int itemAction; int itemState; int /*<<< orphan*/  hDC; TYPE_1__ rcItem; int /*<<< orphan*/  hwndItem; } ;
struct TYPE_9__ {int top; int bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_8__ {int tmHeight; } ;
typedef  TYPE_2__ TEXTMETRIC ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__* LPDRAWITEMSTRUCT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
#define  ODA_DRAWENTIRE 130 
#define  ODA_FOCUS 129 
#define  ODA_SELECT 128 
 int ODS_SELECTED ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ XBITMAP ; 
 int YBITMAP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hbmpOld ; 
 int /*<<< orphan*/  hbmpPicture ; 

__attribute__((used)) static void FUNC9(HWND hWnd, LPARAM lParam)
{
//    int nItem;
    TCHAR tchBuffer[BUFFER_LEN];
//    HBITMAP hbmp;
    TEXTMETRIC tm;
    int y;
    HDC hdcMem;
    LPDRAWITEMSTRUCT lpdis;
    RECT rcBitmap;

    lpdis = (LPDRAWITEMSTRUCT)lParam;
    // If there are no list box items, skip this message.
    if (lpdis->itemID != -1) {
        // Draw the bitmap and text for the list box item. Draw a rectangle around the bitmap if it is selected.
        switch (lpdis->itemAction) {
        case ODA_SELECT:
        case ODA_DRAWENTIRE:
            // Display the bitmap associated with the item.
            hbmpPicture = (HBITMAP)FUNC6(lpdis->hwndItem, LB_GETITEMDATA, lpdis->itemID, (LPARAM)0);
            hdcMem = FUNC1(lpdis->hDC);
            hbmpOld = FUNC5(hdcMem, hbmpPicture);
            FUNC0(lpdis->hDC,
                   lpdis->rcItem.left, lpdis->rcItem.top,
                   lpdis->rcItem.right - lpdis->rcItem.left,
                   lpdis->rcItem.bottom - lpdis->rcItem.top,
                   hdcMem, 0, 0, SRCCOPY);
            // Display the text associated with the item.
            FUNC6(lpdis->hwndItem, LB_GETTEXT, lpdis->itemID, (LPARAM)tchBuffer);
            FUNC4(lpdis->hDC, &tm);
            y = (lpdis->rcItem.bottom + lpdis->rcItem.top - tm.tmHeight) / 2;
            FUNC7(lpdis->hDC, XBITMAP + 6, y, tchBuffer, FUNC8(tchBuffer));
            FUNC5(hdcMem, hbmpOld);
            FUNC2(hdcMem);
            // Is the item selected?
            if (lpdis->itemState & ODS_SELECTED) {
                // Set RECT coordinates to surround only the bitmap.
                rcBitmap.left = lpdis->rcItem.left;
                rcBitmap.top = lpdis->rcItem.top;
                rcBitmap.right = lpdis->rcItem.left + XBITMAP;
                rcBitmap.bottom = lpdis->rcItem.top + YBITMAP;
                // Draw a rectangle around bitmap to indicate the selection.
                FUNC3(lpdis->hDC, &rcBitmap);
            }
            break;
        case ODA_FOCUS:
            // Do not process focus changes. The focus caret (outline rectangle)
            // indicates the selection. The IDOK button indicates the final selection.
            break;
        }
    }
}