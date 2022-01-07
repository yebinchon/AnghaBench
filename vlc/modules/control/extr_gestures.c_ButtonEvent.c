
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_int; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_9__ {int i_button_mask; int b_button_pressed; int lock; int i_last_y; int i_last_x; } ;
typedef TYPE_3__ intf_sys_t ;


 int ProcessGesture (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int var_GetCoords (int *,char*,int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int ButtonEvent( vlc_object_t *p_this, char const *psz_var,
                        vlc_value_t oldval, vlc_value_t val, void *p_data )
{
    intf_thread_t *p_intf = p_data;
    intf_sys_t *p_sys = p_intf->p_sys;

    (void) psz_var; (void) oldval;

    vlc_mutex_lock( &p_sys->lock );
    if( val.i_int & p_sys->i_button_mask )
    {
        if( !p_sys->b_button_pressed )
        {
            p_sys->b_button_pressed = 1;
            var_GetCoords( p_this, "mouse-moved",
                           &p_sys->i_last_x, &p_sys->i_last_y );
        }
    }
    else
    {
        if( p_sys->b_button_pressed )
        {
            p_sys->b_button_pressed = 0;
            ProcessGesture( p_intf );
        }
    }
    vlc_mutex_unlock( &p_sys->lock );

    return VLC_SUCCESS;
}
