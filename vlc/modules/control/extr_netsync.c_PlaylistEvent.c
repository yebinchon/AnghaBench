
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * p_address; } ;
typedef TYPE_1__ vlc_value_t ;
typedef char const vlc_object_t ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_10__ {int * input; scalar_t__ is_master; int thread; } ;
typedef TYPE_3__ intf_sys_t ;
typedef int input_thread_t ;


 int Master ;
 int Slave ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_INPUT ;
 int VLC_UNUSED (char const*) ;
 int assert (int) ;
 int msg_Err (TYPE_2__*,char*) ;
 int vlc_cancel (int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_2__*,int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static int PlaylistEvent(vlc_object_t *object, char const *cmd,
                         vlc_value_t oldval, vlc_value_t newval, void *data)
{
    VLC_UNUSED(cmd); VLC_UNUSED(object);
    intf_thread_t *intf = data;
    intf_sys_t *sys = intf->p_sys;
    input_thread_t *input = newval.p_address;

    if (sys->input != ((void*)0)) {
        msg_Err(intf, "InputEvent DEAD");
        assert(oldval.p_address == sys->input);

        vlc_cancel(sys->thread);
        vlc_join(sys->thread, ((void*)0));
    }

    sys->input = input;

    if (input != ((void*)0)) {
        if (vlc_clone(&sys->thread, sys->is_master ? Master : Slave, intf,
                      VLC_THREAD_PRIORITY_INPUT))
            sys->input = ((void*)0);
    }
    return VLC_SUCCESS;
}
