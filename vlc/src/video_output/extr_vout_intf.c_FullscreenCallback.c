
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {scalar_t__ b_bool; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;


 int VLC_SUCCESS ;
 int vout_ChangeFullscreen (int *,int *) ;
 int vout_ChangeWindowed (int *) ;

__attribute__((used)) static int FullscreenCallback( vlc_object_t *p_this, char const *psz_cmd,
                       vlc_value_t oldval, vlc_value_t newval, void *p_data )
{
    vout_thread_t *p_vout = (vout_thread_t *)p_this;
    (void)psz_cmd; (void) oldval; (void)p_data;

    if( newval.b_bool )
        vout_ChangeFullscreen(p_vout, ((void*)0));
    else
        vout_ChangeWindowed(p_vout);
    return VLC_SUCCESS;
}
