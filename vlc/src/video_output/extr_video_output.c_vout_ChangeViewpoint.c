
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_8__ {int viewpoint; } ;
struct TYPE_10__ {int control; int window_lock; TYPE_1__ display_cfg; int dummy; } ;
typedef TYPE_3__ vout_thread_sys_t ;
struct TYPE_11__ {int viewpoint; } ;
typedef TYPE_4__ vout_control_cmd_t ;
typedef int vlc_viewpoint_t ;


 int VOUT_CONTROL_VIEWPOINT ;
 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_control_Push (int *,TYPE_4__*) ;
 int vout_control_cmd_Init (TYPE_4__*,int ) ;

void vout_ChangeViewpoint(vout_thread_t *vout,
                          const vlc_viewpoint_t *p_viewpoint)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);
    vout_control_cmd_t cmd;

    vlc_mutex_lock(&sys->window_lock);
    sys->display_cfg.viewpoint = *p_viewpoint;

    vlc_mutex_unlock(&sys->window_lock);

    vout_control_cmd_Init(&cmd, VOUT_CONTROL_VIEWPOINT);
    cmd.viewpoint = *p_viewpoint;
    vout_control_Push(&sys->control, &cmd);
}
