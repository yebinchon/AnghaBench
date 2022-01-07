
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int anativewindow; } ;
struct TYPE_5__ {TYPE_1__ handle; } ;
typedef TYPE_2__ vout_window_t ;


 int AWindowHandler_destroy (int ) ;

__attribute__((used)) static void Close(vout_window_t *wnd)
{
    AWindowHandler_destroy(wnd->handle.anativewindow);
}
