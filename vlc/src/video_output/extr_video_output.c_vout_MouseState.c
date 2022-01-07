
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_9__ {int mouse; } ;
typedef TYPE_3__ vout_control_cmd_t ;
typedef int vlc_mouse_t ;
struct TYPE_7__ {int control; int dummy; } ;


 int VOUT_CONTROL_MOUSE_STATE ;
 int assert (int) ;
 int vout_control_Push (int *,TYPE_3__*) ;
 int vout_control_cmd_Init (TYPE_3__*,int ) ;

void vout_MouseState(vout_thread_t *vout, const vlc_mouse_t *mouse)
{
    assert(!vout->p->dummy);
    assert(mouse);
    vout_control_cmd_t cmd;
    vout_control_cmd_Init(&cmd, VOUT_CONTROL_MOUSE_STATE);
    cmd.mouse = *mouse;

    vout_control_Push(&vout->p->control, &cmd);
}
