
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int prop_cnt; struct TYPE_14__* func_disps; int val; TYPE_4__* func_obj; struct TYPE_14__* props; struct TYPE_14__* name; int var; } ;
typedef TYPE_5__ func_obj_entry_t ;
typedef TYPE_5__ dynamic_prop_t ;
struct TYPE_15__ {TYPE_5__* dynamic_data; TYPE_2__* data; } ;
struct TYPE_12__ {int IDispatchEx_iface; } ;
struct TYPE_13__ {TYPE_3__ dispex; int * obj; } ;
struct TYPE_11__ {TYPE_1__* data; } ;
struct TYPE_10__ {int func_disp_cnt; } ;
typedef TYPE_7__ DispatchEx ;


 int IDispatchEx_Release (int *) ;
 int VariantClear (int *) ;
 int heap_free (TYPE_5__*) ;

void release_dispex(DispatchEx *This)
{
    dynamic_prop_t *prop;

    if(!This->dynamic_data)
        return;

    for(prop = This->dynamic_data->props; prop < This->dynamic_data->props + This->dynamic_data->prop_cnt; prop++) {
        VariantClear(&prop->var);
        heap_free(prop->name);
    }

    heap_free(This->dynamic_data->props);

    if(This->dynamic_data->func_disps) {
        func_obj_entry_t *iter;

        for(iter = This->dynamic_data->func_disps; iter < This->dynamic_data->func_disps+This->data->data->func_disp_cnt; iter++) {
            if(iter->func_obj) {
                iter->func_obj->obj = ((void*)0);
                IDispatchEx_Release(&iter->func_obj->dispex.IDispatchEx_iface);
            }
            VariantClear(&iter->val);
        }

        heap_free(This->dynamic_data->func_disps);
    }

    heap_free(This->dynamic_data);
}
