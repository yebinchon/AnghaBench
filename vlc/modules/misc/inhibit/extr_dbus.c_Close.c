
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {int conn; int * pending; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 int dbus_connection_close (int ) ;
 int dbus_connection_unref (int ) ;
 int dbus_pending_call_cancel (int *) ;
 int dbus_pending_call_unref (int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *sys = ih->p_sys;

    if (sys->pending != ((void*)0))
    {
        dbus_pending_call_cancel(sys->pending);
        dbus_pending_call_unref(sys->pending);
    }
    dbus_connection_close (sys->conn);
    dbus_connection_unref (sys->conn);
    free (sys);
}
