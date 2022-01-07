
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_11__ {int type; int viewpoint; int mouse; int boolean; int * string; } ;
typedef TYPE_3__ vout_control_cmd_t ;
struct TYPE_9__ {int display_lock; int display; } ;


 int ThreadChangeFilters (TYPE_2__*,int *,int *,int *,int) ;
 int ThreadProcessMouseState (TYPE_2__*,int *) ;




 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetDisplayViewpoint (int ,int *) ;
 int vout_control_cmd_Clean (TYPE_3__*) ;

__attribute__((used)) static void ThreadControl(vout_thread_t *vout, vout_control_cmd_t cmd)
{
    switch(cmd.type) {
    case 131:
        ThreadChangeFilters(vout, ((void*)0), cmd.string, ((void*)0), 0);
        break;
    case 130:
        ThreadChangeFilters(vout, ((void*)0), ((void*)0), &cmd.boolean, 0);
        break;
    case 129:
        ThreadProcessMouseState(vout, &cmd.mouse);
        break;
    case 128:
        vlc_mutex_lock(&vout->p->display_lock);
        vout_SetDisplayViewpoint(vout->p->display, &cmd.viewpoint);
        vlc_mutex_unlock(&vout->p->display_lock);
        break;
    default:
        break;
    }
    vout_control_cmd_Clean(&cmd);
}
