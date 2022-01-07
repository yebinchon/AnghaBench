
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ workarea ;
struct TYPE_5__ {TYPE_1__* monitors; } ;


 int x11_monitor_free (TYPE_1__*) ;
 TYPE_2__* xcb ;

__attribute__((used)) static void x11_monitors_free ( void )
{
    while ( xcb->monitors != ((void*)0) ) {
        workarea *m = xcb->monitors;
        xcb->monitors = m->next;
        x11_monitor_free ( m );
    }
}
