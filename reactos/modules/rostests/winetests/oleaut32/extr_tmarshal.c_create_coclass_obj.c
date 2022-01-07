
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct coclass_obj {int ref; TYPE_2__ ICoclass2_iface; TYPE_1__ ICoclass1_iface; } ;


 struct coclass_obj* CoTaskMemAlloc (int) ;
 int coclass1_vtbl ;
 int coclass2_vtbl ;

__attribute__((used)) static struct coclass_obj *create_coclass_obj(void)
{
    struct coclass_obj *obj = CoTaskMemAlloc(sizeof(*obj));
    obj->ICoclass1_iface.lpVtbl = &coclass1_vtbl;
    obj->ICoclass2_iface.lpVtbl = &coclass2_vtbl;
    obj->ref = 1;
    return obj;
}
