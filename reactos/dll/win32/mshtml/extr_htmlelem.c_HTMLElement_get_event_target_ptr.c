
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int event_target_t ;
struct TYPE_7__ {int * ptr; } ;
struct TYPE_9__ {TYPE_2__ event_target; TYPE_1__* vtbl; } ;
struct TYPE_8__ {TYPE_4__ node; } ;
struct TYPE_6__ {int ** (* get_event_target_ptr ) (TYPE_4__*) ;} ;
typedef TYPE_3__ HTMLElement ;
typedef int DispatchEx ;


 TYPE_3__* impl_from_DispatchEx (int *) ;
 int ** stub1 (TYPE_4__*) ;

__attribute__((used)) static event_target_t **HTMLElement_get_event_target_ptr(DispatchEx *dispex)
{
    HTMLElement *This = impl_from_DispatchEx(dispex);
    return This->node.vtbl->get_event_target_ptr
        ? This->node.vtbl->get_event_target_ptr(&This->node)
        : &This->node.event_target.ptr;
}
