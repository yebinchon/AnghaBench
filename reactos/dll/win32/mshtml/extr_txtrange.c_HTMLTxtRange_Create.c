
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsIDOMRange ;
struct TYPE_11__ {int range_list; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_2__ IHTMLTxtRange_iface; int entry; TYPE_4__* doc; int * nsrange; TYPE_1__ IOleCommandTarget_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_2__ IHTMLTxtRange ;
typedef TYPE_3__ HTMLTxtRange ;
typedef TYPE_4__ HTMLDocumentNode ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLTxtRangeVtbl ;
 int HTMLTxtRange_dispex ;
 int OleCommandTargetVtbl ;
 int S_OK ;
 TYPE_3__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int list_add_head (int *,int *) ;
 int nsIDOMRange_AddRef (int *) ;

HRESULT HTMLTxtRange_Create(HTMLDocumentNode *doc, nsIDOMRange *nsrange, IHTMLTxtRange **p)
{
    HTMLTxtRange *ret;

    ret = heap_alloc(sizeof(HTMLTxtRange));
    if(!ret)
        return E_OUTOFMEMORY;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLTxtRange_iface, &HTMLTxtRange_dispex);

    ret->IHTMLTxtRange_iface.lpVtbl = &HTMLTxtRangeVtbl;
    ret->IOleCommandTarget_iface.lpVtbl = &OleCommandTargetVtbl;
    ret->ref = 1;

    if(nsrange)
        nsIDOMRange_AddRef(nsrange);
    ret->nsrange = nsrange;

    ret->doc = doc;
    list_add_head(&doc->range_list, &ret->entry);

    *p = &ret->IHTMLTxtRange_iface;
    return S_OK;
}
