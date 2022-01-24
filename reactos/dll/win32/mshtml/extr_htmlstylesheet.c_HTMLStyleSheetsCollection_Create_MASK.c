#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMStyleSheetList ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStyleSheetsCollection_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * nslist; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IHTMLStyleSheetsCollection ;
typedef  TYPE_2__ HTMLStyleSheetsCollection ;

/* Variables and functions */
 int /*<<< orphan*/  HTMLStyleSheetsCollectionVtbl ; 
 int /*<<< orphan*/  HTMLStyleSheetsCollection_dispex ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

IHTMLStyleSheetsCollection *FUNC3(nsIDOMStyleSheetList *nslist)
{
    HTMLStyleSheetsCollection *ret = FUNC0(sizeof(HTMLStyleSheetsCollection));

    ret->IHTMLStyleSheetsCollection_iface.lpVtbl = &HTMLStyleSheetsCollectionVtbl;
    ret->ref = 1;

    if(nslist)
        FUNC2(nslist);
    ret->nslist = nslist;

    FUNC1(&ret->dispex, (IUnknown*)&ret->IHTMLStyleSheetsCollection_iface,
            &HTMLStyleSheetsCollection_dispex);

    return &ret->IHTMLStyleSheetsCollection_iface;
}