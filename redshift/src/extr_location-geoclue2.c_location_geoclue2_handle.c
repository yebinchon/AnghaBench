
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lon; int lat; } ;
typedef TYPE_1__ location_t ;
struct TYPE_6__ {int error; int available; int lock; int longitude; int latitude; int pipe_fd_read; } ;
typedef TYPE_2__ location_geoclue2_state_t ;


 int g_mutex_lock (int *) ;
 int g_mutex_unlock (int *) ;
 int pipeutils_handle_signal (int ) ;

__attribute__((used)) static int
location_geoclue2_handle(
 location_geoclue2_state_t *state,
 location_t *location, int *available)
{
 pipeutils_handle_signal(state->pipe_fd_read);

 g_mutex_lock(&state->lock);

 int error = state->error;
 location->lat = state->latitude;
 location->lon = state->longitude;
 *available = state->available;

 g_mutex_unlock(&state->lock);

 if (error) return -1;

 return 0;
}
