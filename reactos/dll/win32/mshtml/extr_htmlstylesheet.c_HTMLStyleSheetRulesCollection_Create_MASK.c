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
typedef  int /*<<< orphan*/  nsIDOMCSSRuleList ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStyleSheetRulesCollection_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * nslist; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IHTMLStyleSheetRulesCollection ;
typedef  TYPE_2__ HTMLStyleSheetRulesCollection ;

/* Variables and functions */
 int /*<<< orphan*/  HTMLStyleSheetRulesCollectionVtbl ; 
 int /*<<< orphan*/  HTMLStyleSheetRulesCollection_dispex ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IHTMLStyleSheetRulesCollection *FUNC3(nsIDOMCSSRuleList *nslist)
{
    HTMLStyleSheetRulesCollection *ret;

    ret = FUNC0(sizeof(*ret));
    ret->IHTMLStyleSheetRulesCollection_iface.lpVtbl = &HTMLStyleSheetRulesCollectionVtbl;
    ret->ref = 1;
    ret->nslist = nslist;

    FUNC1(&ret->dispex, (IUnknown*)&ret->IHTMLStyleSheetRulesCollection_iface, &HTMLStyleSheetRulesCollection_dispex);

    if(nslist)
        FUNC2(nslist);

    return &ret->IHTMLStyleSheetRulesCollection_iface;
}