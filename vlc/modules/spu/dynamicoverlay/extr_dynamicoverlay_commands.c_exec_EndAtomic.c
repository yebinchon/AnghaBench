
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int b_atomic; int atomic; int pending; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int const commandparams_t ;


 int QueueTransfer (int *,int *) ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int const*) ;

__attribute__((used)) static int exec_EndAtomic( filter_t *p_filter,
                           const commandparams_t *p_params,
                           commandparams_t *p_results )
{
    VLC_UNUSED(p_params);
    VLC_UNUSED(p_results);
    filter_sys_t *p_sys = p_filter->p_sys;
    QueueTransfer( &p_sys->pending, &p_sys->atomic );
    p_sys->b_atomic = 0;
    return VLC_SUCCESS;
}
