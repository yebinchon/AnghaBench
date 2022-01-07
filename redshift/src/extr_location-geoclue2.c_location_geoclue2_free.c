
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pipe_fd_read; int lock; int * thread; } ;
typedef TYPE_1__ location_geoclue2_state_t ;


 int close (int) ;
 int free (TYPE_1__*) ;
 int g_mutex_clear (int *) ;
 int g_thread_join (int *) ;

__attribute__((used)) static void
location_geoclue2_free(location_geoclue2_state_t *state)
{
 if (state->pipe_fd_read != -1) {
  close(state->pipe_fd_read);
 }


 g_thread_join(state->thread);
 state->thread = ((void*)0);

 g_mutex_clear(&state->lock);

 free(state);
}
