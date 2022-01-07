
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct TYPE_4__ {int * lpVtbl; } ;
struct string_enumerator {int ref; int data_len; TYPE_1__ IEnumString_iface; scalar_t__ cur; int ** data; TYPE_2__ IACList_iface; } ;
typedef int WCHAR ;
typedef int HRESULT ;


 int S_OK ;
 int aclist_vtbl ;
 struct string_enumerator* heap_alloc_zero (int) ;
 int string_enumerator_vtbl ;

__attribute__((used)) static HRESULT string_enumerator_create(void **ppv, WCHAR **suggestions, int count)
{
    struct string_enumerator *object;

    object = heap_alloc_zero(sizeof(*object));
    object->IEnumString_iface.lpVtbl = &string_enumerator_vtbl;
    object->IACList_iface.lpVtbl = &aclist_vtbl;
    object->ref = 1;
    object->data = suggestions;
    object->data_len = count;
    object->cur = 0;

    *ppv = &object->IEnumString_iface;

    return S_OK;
}
