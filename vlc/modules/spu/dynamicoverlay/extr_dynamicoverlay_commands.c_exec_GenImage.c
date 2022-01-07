
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int overlay_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int overlays; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_10__ {scalar_t__ i_id; } ;
typedef TYPE_3__ commandparams_t ;


 scalar_t__ ListAdd (int *,int *) ;
 int * OverlayCreate () ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (TYPE_3__ const*) ;

__attribute__((used)) static int exec_GenImage( filter_t *p_filter,
                          const commandparams_t *p_params,
                          commandparams_t *p_results )
{
    VLC_UNUSED(p_params);
    filter_sys_t *p_sys = p_filter->p_sys;

    overlay_t *p_ovl = OverlayCreate();
    if( p_ovl == ((void*)0) )
        return VLC_ENOMEM;

    ssize_t i_idx = ListAdd( &p_sys->overlays, p_ovl );
    if( i_idx < 0 )
        return i_idx;

    p_results->i_id = i_idx;
    return VLC_SUCCESS;
}
