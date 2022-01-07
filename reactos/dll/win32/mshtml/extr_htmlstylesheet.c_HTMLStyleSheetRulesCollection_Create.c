
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsIDOMCSSRuleList ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStyleSheetRulesCollection_iface; int dispex; int * nslist; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLStyleSheetRulesCollection ;
typedef TYPE_2__ HTMLStyleSheetRulesCollection ;


 int HTMLStyleSheetRulesCollectionVtbl ;
 int HTMLStyleSheetRulesCollection_dispex ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int nsIDOMCSSRuleList_AddRef (int *) ;

__attribute__((used)) static IHTMLStyleSheetRulesCollection *HTMLStyleSheetRulesCollection_Create(nsIDOMCSSRuleList *nslist)
{
    HTMLStyleSheetRulesCollection *ret;

    ret = heap_alloc(sizeof(*ret));
    ret->IHTMLStyleSheetRulesCollection_iface.lpVtbl = &HTMLStyleSheetRulesCollectionVtbl;
    ret->ref = 1;
    ret->nslist = nslist;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLStyleSheetRulesCollection_iface, &HTMLStyleSheetRulesCollection_dispex);

    if(nslist)
        nsIDOMCSSRuleList_AddRef(nslist);

    return &ret->IHTMLStyleSheetRulesCollection_iface;
}
