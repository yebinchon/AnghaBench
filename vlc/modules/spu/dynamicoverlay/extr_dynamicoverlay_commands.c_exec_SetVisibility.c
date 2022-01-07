
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int b_active; } ;
typedef TYPE_1__ overlay_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_12__ {int b_updated; int overlays; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_13__ {int b_visible; int i_id; } ;
typedef TYPE_4__ commandparams_t ;


 TYPE_1__* ListGet (int *,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (TYPE_4__*) ;

__attribute__((used)) static int exec_SetVisibility( filter_t *p_filter,
                               const commandparams_t *p_params,
                               commandparams_t *p_results )
{
    VLC_UNUSED(p_results);
    filter_sys_t *p_sys = p_filter->p_sys;

    overlay_t *p_ovl = ListGet( &p_sys->overlays, p_params->i_id );
    if( p_ovl == ((void*)0) )
        return VLC_EGENERIC;

    p_ovl->b_active = p_params->b_visible;
    p_sys->b_updated = 1;
    return VLC_SUCCESS;
}
