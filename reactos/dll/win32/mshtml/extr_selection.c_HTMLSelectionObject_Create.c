
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsISelection ;
struct TYPE_11__ {int selection_list; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_2__ IHTMLSelectionObject_iface; int entry; TYPE_4__* doc; int * nsselection; TYPE_1__ IHTMLSelectionObject2_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_2__ IHTMLSelectionObject ;
typedef TYPE_3__ HTMLSelectionObject ;
typedef TYPE_4__ HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLSelectionObject2Vtbl ;
 int HTMLSelectionObjectVtbl ;
 int HTMLSelectionObject_dispex ;
 int S_OK ;
 TYPE_3__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int list_add_head (int *,int *) ;

HRESULT HTMLSelectionObject_Create(HTMLDocumentNode *doc, nsISelection *nsselection, IHTMLSelectionObject **ret)
{
    HTMLSelectionObject *selection;

    selection = heap_alloc(sizeof(HTMLSelectionObject));
    if(!selection)
        return E_OUTOFMEMORY;

    init_dispex(&selection->dispex, (IUnknown*)&selection->IHTMLSelectionObject_iface, &HTMLSelectionObject_dispex);

    selection->IHTMLSelectionObject_iface.lpVtbl = &HTMLSelectionObjectVtbl;
    selection->IHTMLSelectionObject2_iface.lpVtbl = &HTMLSelectionObject2Vtbl;
    selection->ref = 1;
    selection->nsselection = nsselection;

    selection->doc = doc;
    list_add_head(&doc->selection_list, &selection->entry);

    *ret = &selection->IHTMLSelectionObject_iface;
    return S_OK;
}
