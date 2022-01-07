
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int func_info_t ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int * info; int * obj; TYPE_2__ IUnknown_iface; int dispex; } ;
typedef TYPE_1__ func_disp_t ;
typedef int DispatchEx ;


 int FunctionUnkVtbl ;
 int function_dispex ;
 TYPE_1__* heap_alloc_zero (int) ;
 int init_dispex (int *,TYPE_2__*,int *) ;

__attribute__((used)) static func_disp_t *create_func_disp(DispatchEx *obj, func_info_t *info)
{
    func_disp_t *ret;

    ret = heap_alloc_zero(sizeof(func_disp_t));
    if(!ret)
        return ((void*)0);

    ret->IUnknown_iface.lpVtbl = &FunctionUnkVtbl;
    init_dispex(&ret->dispex, &ret->IUnknown_iface, &function_dispex);
    ret->ref = 1;
    ret->obj = obj;
    ret->info = info;

    return ret;
}
