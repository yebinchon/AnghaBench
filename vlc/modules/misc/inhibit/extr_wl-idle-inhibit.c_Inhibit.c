
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int wl; } ;
struct TYPE_9__ {TYPE_1__ handle; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ vlc_inhibit_t ;
struct TYPE_11__ {int manager; int * inhibitor; } ;
typedef TYPE_4__ vlc_inhibit_sys_t ;


 unsigned int VLC_INHIBIT_DISPLAY ;
 TYPE_2__* vlc_inhibit_GetWindow (TYPE_3__*) ;
 int * zwp_idle_inhibit_manager_v1_create_inhibitor (int ,int ) ;
 int zwp_idle_inhibitor_v1_destroy (int *) ;

__attribute__((used)) static void Inhibit (vlc_inhibit_t *ih, unsigned mask)
{
    vout_window_t *wnd = vlc_inhibit_GetWindow(ih);
    vlc_inhibit_sys_t *sys = ih->p_sys;
    bool suspend = (mask & VLC_INHIBIT_DISPLAY) != 0;

    if (sys->inhibitor != ((void*)0)) {
        zwp_idle_inhibitor_v1_destroy(sys->inhibitor);
        sys->inhibitor = ((void*)0);
    }

    if (suspend)
        sys->inhibitor = zwp_idle_inhibit_manager_v1_create_inhibitor(
            sys->manager, wnd->handle.wl);

}
