
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IHTMLElementCollection_iface; int dispex; int len; int ** elems; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLElementCollection ;
typedef TYPE_2__ HTMLElementCollection ;
typedef int HTMLElement ;
typedef int DWORD ;


 int HTMLElementCollectionVtbl ;
 int HTMLElementCollection_dispex ;
 int TRACE (char*,TYPE_2__*,int ) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

__attribute__((used)) static IHTMLElementCollection *HTMLElementCollection_Create(HTMLElement **elems, DWORD len)
{
    HTMLElementCollection *ret = heap_alloc_zero(sizeof(HTMLElementCollection));

    if (!ret)
        return ((void*)0);

    ret->IHTMLElementCollection_iface.lpVtbl = &HTMLElementCollectionVtbl;
    ret->ref = 1;
    ret->elems = elems;
    ret->len = len;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLElementCollection_iface,
            &HTMLElementCollection_dispex);

    TRACE("ret=%p len=%d\n", ret, len);

    return &ret->IHTMLElementCollection_iface;
}
