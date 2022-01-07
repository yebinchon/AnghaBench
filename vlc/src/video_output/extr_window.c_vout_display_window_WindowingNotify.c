
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
struct TYPE_7__ {TYPE_1__ owner; } ;
typedef TYPE_2__ vout_window_t ;
typedef int vout_thread_t ;
struct TYPE_8__ {int * vout; } ;
typedef TYPE_3__ vout_display_window_t ;


 int msg_Dbg (TYPE_2__*,char*) ;
 int var_SetBool (int *,char*,int) ;

__attribute__((used)) static void vout_display_window_WindowingNotify(vout_window_t *window)
{
    vout_display_window_t *state = window->owner.sys;
    vout_thread_t *vout = state->vout;

    msg_Dbg(window, "window set windowed");
    var_SetBool(vout, "window-fullscreen", 0);
}
