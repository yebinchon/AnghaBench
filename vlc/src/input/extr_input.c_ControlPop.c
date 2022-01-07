
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_5__ {int i_control; int lock_control; TYPE_2__* control; int wait_control; scalar_t__ is_stopped; } ;
typedef TYPE_1__ input_thread_private_t ;
typedef int input_control_param_t ;
struct TYPE_6__ {int i_type; int param; } ;


 scalar_t__ ControlIsSeekRequest (int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_1__* input_priv (int *) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ vlc_cond_timedwait (int *,int *,int ) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static inline int ControlPop( input_thread_t *p_input,
                              int *pi_type, input_control_param_t *p_param,
                              vlc_tick_t i_deadline, bool b_postpone_seek )
{
    input_thread_private_t *p_sys = input_priv(p_input);

    vlc_mutex_lock( &p_sys->lock_control );
    while( p_sys->i_control <= 0 ||
           ( b_postpone_seek && ControlIsSeekRequest( p_sys->control[0].i_type ) ) )
    {
        if( p_sys->is_stopped )
        {
            vlc_mutex_unlock( &p_sys->lock_control );
            return VLC_EGENERIC;
        }

        if( i_deadline >= 0 )
        {
            if( vlc_cond_timedwait( &p_sys->wait_control, &p_sys->lock_control,
                                    i_deadline ) )
            {
                vlc_mutex_unlock( &p_sys->lock_control );
                return VLC_EGENERIC;
            }
        }
        else
            vlc_cond_wait( &p_sys->wait_control, &p_sys->lock_control );
    }


    *pi_type = p_sys->control[0].i_type;
    *p_param = p_sys->control[0].param;

    p_sys->i_control --;
    if( p_sys->i_control > 0 )
        memmove( &p_sys->control[0], &p_sys->control[1],
                 sizeof(*p_sys->control) * p_sys->i_control );
    vlc_mutex_unlock( &p_sys->lock_control );

    return VLC_SUCCESS;
}
