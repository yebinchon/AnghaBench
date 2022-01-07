
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loop; } ;
typedef TYPE_1__ location_geoclue2_state_t ;
typedef TYPE_1__* gpointer ;
typedef int gboolean ;
typedef int GIOCondition ;
typedef int GIOChannel ;


 int FALSE ;
 int g_main_loop_quit (int ) ;

__attribute__((used)) static gboolean
on_pipe_closed(GIOChannel *channel, GIOCondition condition, gpointer user_data)
{
 location_geoclue2_state_t *state = user_data;
 g_main_loop_quit(state->loop);

 return FALSE;
}
