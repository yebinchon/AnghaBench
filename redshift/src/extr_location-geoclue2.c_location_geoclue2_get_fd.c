
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pipe_fd_read; } ;
typedef TYPE_1__ location_geoclue2_state_t ;



__attribute__((used)) static int
location_geoclue2_get_fd(location_geoclue2_state_t *state)
{
 return state->pipe_fd_read;
}
