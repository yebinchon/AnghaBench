#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {int /*<<< orphan*/  top; scalar_t__ left; } ;
struct TYPE_16__ {size_t itemID; int /*<<< orphan*/  CtlID; int /*<<< orphan*/  itemState; TYPE_1__ rcItem; int /*<<< orphan*/  itemData; int /*<<< orphan*/  hDC; int /*<<< orphan*/  itemAction; int /*<<< orphan*/  hwndItem; int /*<<< orphan*/  CtlType; } ;
struct TYPE_15__ {size_t nb_items; int UIState; size_t focus_item; int style; scalar_t__ in_focus; scalar_t__ caret_on; int /*<<< orphan*/  tabs; int /*<<< orphan*/  nb_tabs; int /*<<< orphan*/  self; int /*<<< orphan*/  owner; TYPE_2__* items; } ;
struct TYPE_14__ {scalar_t__ selected; int /*<<< orphan*/ * str; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ LB_ITEMDATA ;
typedef  TYPE_3__ LB_DESCR ;
typedef  size_t INT ;
typedef  scalar_t__ HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ DRAWITEMSTRUCT ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHTTEXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t) ; 
 int ETO_CLIPPED ; 
 int ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int LBS_USETABSTOPS ; 
 int /*<<< orphan*/  ODA_FOCUS ; 
 int /*<<< orphan*/  ODS_DISABLED ; 
 int /*<<< orphan*/  ODS_FOCUS ; 
 int /*<<< orphan*/  ODS_SELECTED ; 
 int /*<<< orphan*/  ODT_LISTBOX ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UISF_HIDEFOCUS ; 
 int /*<<< orphan*/  WM_DRAWITEM ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC19( LB_DESCR *descr, HDC hdc, const RECT *rect, 
			       INT index, UINT action, BOOL ignoreFocus )
{
    LB_ITEMDATA *item = NULL;
    if (index < descr->nb_items) item = &descr->items[index];

    if (FUNC7(descr))
    {
        DRAWITEMSTRUCT dis;
        RECT r;
        HRGN hrgn;

	if (!item)
	{
	    if (action == ODA_FOCUS)
            { // REACTOS
               if (!(descr->UIState & UISF_HIDEFOCUS))
                   FUNC1( hdc, rect );
            } //
	    else
	        FUNC2("called with an out of bounds index %d(%d) in owner draw, Not good.\n",index,descr->nb_items);
	    return;
	}

        /* some programs mess with the clipping region when
        drawing the item, *and* restore the previous region
        after they are done, so a region has better to exist
        else everything ends clipped */
        FUNC4(descr->self, &r);
        hrgn = FUNC16( hdc, &r );

        dis.CtlType      = ODT_LISTBOX;
        dis.CtlID        = FUNC6( descr->self, GWLP_ID );
        dis.hwndItem     = descr->self;
        dis.itemAction   = action;
        dis.hDC          = hdc;
        dis.itemID       = index;
        dis.itemState    = 0;
        if (item->selected) dis.itemState |= ODS_SELECTED;
        if (!ignoreFocus && (descr->focus_item == index) &&
            (descr->caret_on) &&
            (descr->in_focus)) dis.itemState |= ODS_FOCUS;
        if (!FUNC8(descr->self)) dis.itemState |= ODS_DISABLED;
        dis.itemData     = item->data;
        dis.rcItem       = *rect;
        FUNC13("[%p]: drawitem %d (%s) action=%02x state=%02x rect=%s\n",
              descr->self, index, FUNC15(item->str), action,
              dis.itemState, FUNC18(rect) );
        FUNC10(descr->owner, WM_DRAWITEM, dis.CtlID, (LPARAM)&dis);
        FUNC9( hdc, hrgn );
        if (hrgn) FUNC0( hrgn );
    }
    else
    {
        COLORREF oldText = 0, oldBk = 0;

        if (action == ODA_FOCUS)
        {
            if (!(descr->UIState & UISF_HIDEFOCUS)) // REACTOS
                FUNC1( hdc, rect );
            return;
        }
        if (item && item->selected)
        {
            oldBk = FUNC11( hdc, FUNC5( COLOR_HIGHLIGHT ) );
            oldText = FUNC12( hdc, FUNC5(COLOR_HIGHLIGHTTEXT));
        }

        FUNC13("[%p]: painting %d (%s) action=%02x rect=%s\n",
              descr->self, index, item ? FUNC15(item->str) : "", action,
              FUNC18(rect) );
        if (!item)
            FUNC3( hdc, rect->left + 1, rect->top,
                           ETO_OPAQUE | ETO_CLIPPED, rect, NULL, 0, NULL );
        else if (!(descr->style & LBS_USETABSTOPS))
            FUNC3( hdc, rect->left + 1, rect->top,
                         ETO_OPAQUE | ETO_CLIPPED, rect, item->str,
                         FUNC17(item->str), NULL );
        else
	{
	    /* Output empty string to paint background in the full width. */
            FUNC3( hdc, rect->left + 1, rect->top,
                         ETO_OPAQUE | ETO_CLIPPED, rect, NULL, 0, NULL );
            FUNC14( hdc, rect->left + 1 , rect->top,
                            item->str, FUNC17(item->str),
                            descr->nb_tabs, descr->tabs, 0);
	}
        if (item && item->selected)
        {
            FUNC11( hdc, oldBk );
            FUNC12( hdc, oldText );
        }
        if (!ignoreFocus && (descr->focus_item == index) &&
            (descr->caret_on) &&
            (descr->in_focus) &&
            !(descr->UIState & UISF_HIDEFOCUS)) FUNC1( hdc, rect );
    }
}