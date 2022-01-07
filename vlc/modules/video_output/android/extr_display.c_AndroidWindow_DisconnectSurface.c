
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_awh; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_6__ {int * p_surface; int id; } ;
typedef TYPE_2__ android_window ;


 int AWindowHandler_releaseANativeWindow (int ,int ) ;

__attribute__((used)) static void AndroidWindow_DisconnectSurface(vout_display_sys_t *sys,
                                            android_window *p_window)
{
    if (p_window->p_surface) {
        AWindowHandler_releaseANativeWindow(sys->p_awh, p_window->id);
        p_window->p_surface = ((void*)0);
    }
}
