
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int event_target_t ;
struct TYPE_5__ {TYPE_1__* doc; } ;
struct TYPE_4__ {int * body_event_target; } ;
typedef TYPE_2__ HTMLInnerWindow ;
typedef int DispatchEx ;


 TYPE_2__* impl_from_DispatchEx (int *) ;

__attribute__((used)) static event_target_t **HTMLWindow_get_event_target_ptr(DispatchEx *dispex)
{
    HTMLInnerWindow *This = impl_from_DispatchEx(dispex);
    return &This->doc->body_event_target;
}
