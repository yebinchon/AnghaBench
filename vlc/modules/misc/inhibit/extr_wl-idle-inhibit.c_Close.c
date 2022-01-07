
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wl; } ;
struct TYPE_8__ {TYPE_1__ display; } ;
typedef TYPE_2__ vout_window_t ;
typedef int vlc_object_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ vlc_inhibit_t ;
struct TYPE_10__ {int eventq; int manager; int * inhibitor; } ;
typedef TYPE_4__ vlc_inhibit_sys_t ;


 TYPE_2__* vlc_inhibit_GetWindow (TYPE_3__*) ;
 int wl_display_flush (int ) ;
 int wl_event_queue_destroy (int ) ;
 int zwp_idle_inhibit_manager_v1_destroy (int ) ;
 int zwp_idle_inhibitor_v1_destroy (int *) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *sys = ih->p_sys;
    vout_window_t *wnd = vlc_inhibit_GetWindow(ih);

    if (sys->inhibitor != ((void*)0))
        zwp_idle_inhibitor_v1_destroy(sys->inhibitor);

    zwp_idle_inhibit_manager_v1_destroy(sys->manager);
    wl_display_flush(wnd->display.wl);
    wl_event_queue_destroy(sys->eventq);
}
