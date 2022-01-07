
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int b_updated; int overlays; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_10__ {int i_id; } ;
typedef TYPE_3__ commandparams_t ;


 int ListRemove (int *,int ) ;
 int VLC_UNUSED (TYPE_3__*) ;

__attribute__((used)) static int exec_DeleteImage( filter_t *p_filter,
                             const commandparams_t *p_params,
                             commandparams_t *p_results )
{
    VLC_UNUSED(p_results);
    filter_sys_t *p_sys = p_filter->p_sys;
    p_sys->b_updated = 1;

    return ListRemove( &p_sys->overlays, p_params->i_id );
}
