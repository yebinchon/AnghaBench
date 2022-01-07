
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct disp_obj {int ref; TYPE_1__ ISomethingFromDispatch_iface; } ;
typedef TYPE_1__ ISomethingFromDispatch ;


 struct disp_obj* CoTaskMemAlloc (int) ;
 int disp_obj_vtbl ;

__attribute__((used)) static ISomethingFromDispatch *create_disp_obj(void)
{
    struct disp_obj *obj = CoTaskMemAlloc(sizeof(*obj));
    obj->ISomethingFromDispatch_iface.lpVtbl = &disp_obj_vtbl;
    obj->ref = 1;
    return &obj->ISomethingFromDispatch_iface;
}
