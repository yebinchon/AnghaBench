#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {size_t itemID; scalar_t__ itemData; int /*<<< orphan*/  hwndItem; int /*<<< orphan*/  CtlID; int /*<<< orphan*/  CtlType; } ;
struct TYPE_8__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  self; int /*<<< orphan*/  nb_items; TYPE_1__* items; } ;
struct TYPE_7__ {int /*<<< orphan*/  str; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ LB_DESCR ;
typedef  size_t INT ;
typedef  TYPE_3__ DELETEITEMSTRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  LB_RESETCONTENT ; 
 int /*<<< orphan*/  ODT_LISTBOX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_DELETEITEM ; 

__attribute__((used)) static void FUNC6( LB_DESCR *descr, INT index )
{
    /* save the item data before it gets freed by LB_RESETCONTENT */
    ULONG_PTR item_data = descr->items[index].data;
    LPWSTR item_str = descr->items[index].str;

    if (!descr->nb_items)
        FUNC5( descr->self, LB_RESETCONTENT, 0, 0 );

    /* Note: Win 3.1 only sends DELETEITEM on owner-draw items,
     *       while Win95 sends it for all items with user data.
     *       It's probably better to send it too often than not
     *       often enough, so this is what we do here.
     */
    if (FUNC4(descr) || item_data)
    {
        DELETEITEMSTRUCT dis;
        UINT id = (UINT)FUNC1( descr->self, GWLP_ID );

        dis.CtlType  = ODT_LISTBOX;
        dis.CtlID    = id;
        dis.itemID   = index;
        dis.hwndItem = descr->self;
        dis.itemData = item_data;
        FUNC5( descr->owner, WM_DELETEITEM, id, (LPARAM)&dis );
    }
    if (FUNC2(descr))
        FUNC3( FUNC0(), 0, item_str );
}