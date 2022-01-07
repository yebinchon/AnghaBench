
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsIDOMStyleSheetList ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStyleSheetsCollection_iface; int dispex; int * nslist; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLStyleSheetsCollection ;
typedef TYPE_2__ HTMLStyleSheetsCollection ;


 int HTMLStyleSheetsCollectionVtbl ;
 int HTMLStyleSheetsCollection_dispex ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int nsIDOMStyleSheetList_AddRef (int *) ;

IHTMLStyleSheetsCollection *HTMLStyleSheetsCollection_Create(nsIDOMStyleSheetList *nslist)
{
    HTMLStyleSheetsCollection *ret = heap_alloc(sizeof(HTMLStyleSheetsCollection));

    ret->IHTMLStyleSheetsCollection_iface.lpVtbl = &HTMLStyleSheetsCollectionVtbl;
    ret->ref = 1;

    if(nslist)
        nsIDOMStyleSheetList_AddRef(nslist);
    ret->nslist = nslist;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLStyleSheetsCollection_iface,
            &HTMLStyleSheetsCollection_dispex);

    return &ret->IHTMLStyleSheetsCollection_iface;
}
