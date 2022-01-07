
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {size_t i_control; int is_stopped; int interrupt; int lock_control; int wait_control; TYPE_2__* control; } ;
typedef TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {int param; int i_type; } ;
typedef TYPE_2__ input_control_t ;


 int ControlRelease (int ,int *) ;
 TYPE_1__* input_priv (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_interrupt_kill (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_Stop( input_thread_t *p_input )
{
    input_thread_private_t *sys = input_priv(p_input);

    vlc_mutex_lock( &sys->lock_control );

    for( size_t i = 0; i < sys->i_control; i++ )
    {
        input_control_t *ctrl = &sys->control[i];
        ControlRelease( ctrl->i_type, &ctrl->param );
    }
    sys->i_control = 0;
    sys->is_stopped = 1;
    vlc_cond_signal( &sys->wait_control );
    vlc_mutex_unlock( &sys->lock_control );
    vlc_interrupt_kill( &sys->interrupt );
}
