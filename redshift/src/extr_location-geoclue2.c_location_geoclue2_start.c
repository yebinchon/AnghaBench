
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pipe_fd_read; int pipe_fd_write; int thread; int lock; scalar_t__ longitude; scalar_t__ latitude; scalar_t__ error; scalar_t__ available; } ;
typedef TYPE_1__ location_geoclue2_state_t ;


 int _ (char*) ;
 int fputs (int ,int ) ;
 int g_mutex_init (int *) ;
 int g_thread_new (char*,int ,TYPE_1__*) ;
 int pipeutils_create_nonblocking (int*) ;
 int pipeutils_signal (int) ;
 int run_geoclue2_loop ;
 int stderr ;

__attribute__((used)) static int
location_geoclue2_start(location_geoclue2_state_t *state)
{
 state->pipe_fd_read = -1;
 state->pipe_fd_write = -1;

 state->available = 0;
 state->error = 0;
 state->latitude = 0;
 state->longitude = 0;

 int pipefds[2];
 int r = pipeutils_create_nonblocking(pipefds);
 if (r < 0) {
  fputs(_("Failed to start GeoClue2 provider!\n"), stderr);
  return -1;
 }

 state->pipe_fd_read = pipefds[0];
 state->pipe_fd_write = pipefds[1];

 pipeutils_signal(state->pipe_fd_write);

 g_mutex_init(&state->lock);
 state->thread = g_thread_new("geoclue2", run_geoclue2_loop, state);

 return 0;
}
