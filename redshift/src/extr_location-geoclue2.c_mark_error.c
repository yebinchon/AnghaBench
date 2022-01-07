
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int pipe_fd_write; int lock; } ;
typedef TYPE_1__ location_geoclue2_state_t ;


 int g_mutex_lock (int *) ;
 int g_mutex_unlock (int *) ;
 int pipeutils_signal (int ) ;

__attribute__((used)) static void
mark_error(location_geoclue2_state_t *state)
{
 g_mutex_lock(&state->lock);

 state->error = 1;

 g_mutex_unlock(&state->lock);

 pipeutils_signal(state->pipe_fd_write);
}
