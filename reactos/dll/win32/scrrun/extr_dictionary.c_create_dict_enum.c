
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct dictionary_enum {int ref; TYPE_1__ IEnumVARIANT_iface; TYPE_2__* dict; int notify; int cur; } ;
struct TYPE_5__ {int IDictionary_iface; int notifier; int pairs; } ;
typedef TYPE_2__ dictionary ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IDictionary_AddRef (int *) ;
 int S_OK ;
 int dictenumvtbl ;
 struct dictionary_enum* heap_alloc (int) ;
 int list_add_tail (int *,int *) ;
 int list_head (int *) ;

__attribute__((used)) static HRESULT create_dict_enum(dictionary *dict, IUnknown **ret)
{
    struct dictionary_enum *This;

    *ret = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->IEnumVARIANT_iface.lpVtbl = &dictenumvtbl;
    This->ref = 1;
    This->cur = list_head(&dict->pairs);
    list_add_tail(&dict->notifier, &This->notify);
    This->dict = dict;
    IDictionary_AddRef(&dict->IDictionary_iface);

    *ret = (IUnknown*)&This->IEnumVARIANT_iface;
    return S_OK;
}
