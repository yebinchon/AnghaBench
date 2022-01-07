
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int entry; void* value; void* name; } ;
typedef TYPE_1__ param_prop_t ;
typedef int WCHAR ;
struct TYPE_8__ {int props; } ;
typedef TYPE_2__ PropertyBag ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int ,int ) ;
 int debugstr_w (int const*) ;
 int free_prop (TYPE_1__*) ;
 TYPE_1__* heap_alloc (int) ;
 void* heap_strdupW (int const*) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT add_prop(PropertyBag *prop_bag, const WCHAR *name, const WCHAR *value)
{
    param_prop_t *prop;

    if(!name || !value)
        return S_OK;

    TRACE("%p %s %s\n", prop_bag, debugstr_w(name), debugstr_w(value));

    prop = heap_alloc(sizeof(*prop));
    if(!prop)
        return E_OUTOFMEMORY;

    prop->name = heap_strdupW(name);
    prop->value = heap_strdupW(value);
    if(!prop->name || !prop->value) {
        list_init(&prop->entry);
        free_prop(prop);
        return E_OUTOFMEMORY;
    }

    list_add_tail(&prop_bag->props, &prop->entry);
    return S_OK;
}
