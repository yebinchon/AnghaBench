
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dispex_dynamic_data_t ;
struct TYPE_8__ {int * dynamic_data; TYPE_1__* data; } ;
struct TYPE_7__ {int (* populate_props ) (TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_2__* vtbl; } ;
typedef TYPE_3__ DispatchEx ;


 int * heap_alloc_zero (int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static inline dispex_dynamic_data_t *get_dynamic_data(DispatchEx *This)
{
    if(This->dynamic_data)
        return This->dynamic_data;

    This->dynamic_data = heap_alloc_zero(sizeof(dispex_dynamic_data_t));
    if(!This->dynamic_data)
        return ((void*)0);

    if(This->data->vtbl && This->data->vtbl->populate_props)
        This->data->vtbl->populate_props(This);

    return This->dynamic_data;
}
