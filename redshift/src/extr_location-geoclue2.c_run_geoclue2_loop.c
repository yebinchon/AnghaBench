
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loop; int pipe_fd_write; } ;
typedef TYPE_1__ location_geoclue2_state_t ;
typedef int guint ;
typedef int GSourceFunc ;
typedef int GSource ;
typedef int GMainContext ;
typedef int GIOChannel ;


 int FALSE ;
 int G_BUS_NAME_WATCHER_FLAGS_AUTO_START ;
 int G_BUS_TYPE_SYSTEM ;
 int G_IO_ERR ;
 int G_IO_HUP ;
 int G_IO_IN ;
 int close (int ) ;
 int g_bus_unwatch_name (int ) ;
 int g_bus_watch_name (int ,char*,int ,int ,int ,TYPE_1__*,int *) ;
 int * g_io_channel_unix_new (int ) ;
 int g_io_channel_unref (int *) ;
 int * g_io_create_watch (int *,int) ;
 int * g_main_context_new () ;
 int g_main_context_push_thread_default (int *) ;
 int g_main_context_unref (int *) ;
 int g_main_loop_new (int *,int ) ;
 int g_main_loop_run (int ) ;
 int g_main_loop_unref (int ) ;
 int g_source_attach (int *,int *) ;
 int g_source_set_callback (int *,int ,TYPE_1__*,int *) ;
 int g_source_unref (int *) ;
 int on_name_appeared ;
 int on_name_vanished ;
 scalar_t__ on_pipe_closed ;

__attribute__((used)) static void *
run_geoclue2_loop(void *state_)
{
 location_geoclue2_state_t *state = state_;

 GMainContext *context = g_main_context_new();
 g_main_context_push_thread_default(context);
 state->loop = g_main_loop_new(context, FALSE);

 guint watcher_id = g_bus_watch_name(
  G_BUS_TYPE_SYSTEM,
  "org.freedesktop.GeoClue2",
  G_BUS_NAME_WATCHER_FLAGS_AUTO_START,
  on_name_appeared,
  on_name_vanished,
  state, ((void*)0));


 GIOChannel *pipe_channel = g_io_channel_unix_new(state->pipe_fd_write);
 GSource *pipe_source = g_io_create_watch(
  pipe_channel, G_IO_IN | G_IO_HUP | G_IO_ERR);
        g_source_set_callback(
  pipe_source, (GSourceFunc)on_pipe_closed, state, ((void*)0));
        g_source_attach(pipe_source, context);

 g_main_loop_run(state->loop);

 g_source_unref(pipe_source);
 g_io_channel_unref(pipe_channel);
 close(state->pipe_fd_write);

 g_bus_unwatch_name(watcher_id);

 g_main_loop_unref(state->loop);
 g_main_context_unref(context);

 return ((void*)0);
}
