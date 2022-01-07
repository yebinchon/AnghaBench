
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsIDOMNodeList ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_1__ IHTMLDOMChildrenCollection_iface; int dispex; TYPE_2__* doc; int * nslist; } ;
struct TYPE_8__ {int basedoc; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLDOMChildrenCollection ;
typedef TYPE_2__ HTMLDocumentNode ;
typedef TYPE_3__ HTMLDOMChildrenCollection ;


 int HTMLDOMChildrenCollectionVtbl ;
 int HTMLDOMChildrenCollection_dispex ;
 TYPE_3__* heap_alloc_zero (int) ;
 int htmldoc_addref (int *) ;
 int init_dispex (int *,int *,int *) ;
 int nsIDOMNodeList_AddRef (int *) ;

__attribute__((used)) static IHTMLDOMChildrenCollection *create_child_collection(HTMLDocumentNode *doc, nsIDOMNodeList *nslist)
{
    HTMLDOMChildrenCollection *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->IHTMLDOMChildrenCollection_iface.lpVtbl = &HTMLDOMChildrenCollectionVtbl;
    ret->ref = 1;

    nsIDOMNodeList_AddRef(nslist);
    ret->nslist = nslist;

    htmldoc_addref(&doc->basedoc);
    ret->doc = doc;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLDOMChildrenCollection_iface,
            &HTMLDOMChildrenCollection_dispex);

    return &ret->IHTMLDOMChildrenCollection_iface;
}
