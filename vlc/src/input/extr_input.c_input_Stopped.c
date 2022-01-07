
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_3__ {int is_stopped; int lock_control; } ;
typedef TYPE_1__ input_thread_private_t ;


 TYPE_1__* input_priv (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool input_Stopped( input_thread_t *input )
{
    input_thread_private_t *sys = input_priv(input);
    bool ret;

    vlc_mutex_lock( &sys->lock_control );
    ret = sys->is_stopped;
    vlc_mutex_unlock( &sys->lock_control );
    return ret;
}
