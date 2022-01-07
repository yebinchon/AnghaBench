
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct record {int dummy; } ;
struct TYPE_4__ {int * lpVtbl; } ;
struct class_object {int refs; TYPE_1__ IWbemClassObject_iface; struct record* record; scalar_t__ index_property; scalar_t__ index_method; int index; int * iter; int * name; } ;
typedef int WCHAR ;
typedef int UINT ;
typedef TYPE_1__ IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IEnumWbemClassObject_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,...) ;
 int class_object_vtbl ;
 int debugstr_w (int const*) ;
 struct class_object* heap_alloc (int) ;
 int heap_free (struct class_object*) ;
 int * heap_strdupW (int const*) ;

HRESULT create_class_object( const WCHAR *name, IEnumWbemClassObject *iter, UINT index,
                             struct record *record, IWbemClassObject **obj )
{
    struct class_object *co;

    TRACE("%s, %p\n", debugstr_w(name), obj);

    co = heap_alloc( sizeof(*co) );
    if (!co) return E_OUTOFMEMORY;

    co->IWbemClassObject_iface.lpVtbl = &class_object_vtbl;
    co->refs = 1;
    if (!name) co->name = ((void*)0);
    else if (!(co->name = heap_strdupW( name )))
    {
        heap_free( co );
        return E_OUTOFMEMORY;
    }
    co->iter = iter;
    co->index = index;
    co->index_method = 0;
    co->index_property = 0;
    co->record = record;
    if (iter) IEnumWbemClassObject_AddRef( iter );

    *obj = &co->IWbemClassObject_iface;

    TRACE("returning iface %p\n", *obj);
    return S_OK;
}
