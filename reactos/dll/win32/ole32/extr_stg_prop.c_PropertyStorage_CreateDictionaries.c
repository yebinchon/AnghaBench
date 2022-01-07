
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* propid_to_prop; void* propid_to_name; void* name_to_propid; } ;
typedef TYPE_1__ PropertyStorage_impl ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int PropertyStorage_DestroyDictionaries (TYPE_1__*) ;
 int PropertyStorage_PropCompare ;
 int PropertyStorage_PropNameCompare ;
 int * PropertyStorage_PropNameDestroy ;
 int * PropertyStorage_PropertyDestroy ;
 int STG_E_INSUFFICIENTMEMORY ;
 int S_OK ;
 void* dictionary_create (int ,int *,TYPE_1__*) ;

__attribute__((used)) static HRESULT PropertyStorage_CreateDictionaries(PropertyStorage_impl *This)
{
    HRESULT hr = S_OK;

    This->name_to_propid = dictionary_create(
     PropertyStorage_PropNameCompare, PropertyStorage_PropNameDestroy,
     This);
    if (!This->name_to_propid)
    {
        hr = STG_E_INSUFFICIENTMEMORY;
        goto end;
    }
    This->propid_to_name = dictionary_create(PropertyStorage_PropCompare,
     ((void*)0), This);
    if (!This->propid_to_name)
    {
        hr = STG_E_INSUFFICIENTMEMORY;
        goto end;
    }
    This->propid_to_prop = dictionary_create(PropertyStorage_PropCompare,
     PropertyStorage_PropertyDestroy, This);
    if (!This->propid_to_prop)
    {
        hr = STG_E_INSUFFICIENTMEMORY;
        goto end;
    }
end:
    if (FAILED(hr))
        PropertyStorage_DestroyDictionaries(This);
    return hr;
}
