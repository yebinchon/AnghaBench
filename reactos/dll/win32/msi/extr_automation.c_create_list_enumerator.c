
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_3__* list; scalar_t__ pos; TYPE_2__ IEnumVARIANT_iface; } ;
struct TYPE_8__ {int IDispatch_iface; } ;
struct TYPE_10__ {TYPE_1__ autoobj; } ;
typedef TYPE_3__ ListObject ;
typedef TYPE_4__ ListEnumerator ;
typedef int HRESULT ;


 int IDispatch_AddRef (int *) ;
 int ListEnumerator_Vtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,void**) ;
 TYPE_4__* msi_alloc (int) ;

__attribute__((used)) static HRESULT create_list_enumerator(ListObject *list, void **ppObj)
{
    ListEnumerator *object;

    TRACE("(%p, %p)\n", list, ppObj);

    object = msi_alloc(sizeof(ListEnumerator));


    object->IEnumVARIANT_iface.lpVtbl = &ListEnumerator_Vtbl;
    object->ref = 1;


    object->pos = 0;
    object->list = list;
    if (list) IDispatch_AddRef(&list->autoobj.IDispatch_iface);

    *ppObj = object;
    return S_OK;
}
