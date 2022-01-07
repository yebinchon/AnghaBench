
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_4__ {int control; int dummy; } ;


 int VOUT_CONTROL_CHANGE_FILTERS ;
 int assert (int) ;
 int vout_control_PushString (int *,int ,char const*) ;

void vout_ControlChangeFilters(vout_thread_t *vout, const char *filters)
{
    assert(!vout->p->dummy);
    vout_control_PushString(&vout->p->control, VOUT_CONTROL_CHANGE_FILTERS,
                            filters);
}
