
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pipe_fd_write; int lock; scalar_t__ available; } ;
typedef TYPE_1__ location_geoclue2_state_t ;
typedef TYPE_1__* gpointer ;
typedef int gchar ;
typedef int GDBusConnection ;


 int g_mutex_lock (int *) ;
 int g_mutex_unlock (int *) ;
 int pipeutils_signal (int ) ;

__attribute__((used)) static void
on_name_vanished(GDBusConnection *connection, const gchar *name,
   gpointer user_data)
{
 location_geoclue2_state_t *state = user_data;

 g_mutex_lock(&state->lock);

 state->available = 0;

 g_mutex_unlock(&state->lock);

 pipeutils_signal(state->pipe_fd_write);
}
