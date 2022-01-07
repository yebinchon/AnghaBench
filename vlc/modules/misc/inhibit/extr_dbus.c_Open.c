
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {int inhibit; TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_12__ {unsigned int api; int * conn; scalar_t__ cookie; int * pending; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;
struct TYPE_13__ {int message; } ;
typedef TYPE_3__ DBusError ;


 int Close (int *) ;
 int DBUS_BUS_SESSION ;
 int Inhibit ;
 unsigned int MAX_API ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * dbus_bus_get_private (int ,TYPE_3__*) ;
 scalar_t__ dbus_bus_name_has_owner (int *,int ,int *) ;
 int dbus_error_free (TYPE_3__*) ;
 int dbus_error_init (TYPE_3__*) ;
 int * dbus_service ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,int ) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *sys = malloc (sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    DBusError err;
    dbus_error_init(&err);

    sys->conn = dbus_bus_get_private (DBUS_BUS_SESSION, &err);
    if (sys->conn == ((void*)0))
    {
        msg_Err(ih, "cannot connect to session bus: %s", err.message);
        dbus_error_free(&err);
        free(sys);
        return VLC_EGENERIC;
    }

    sys->pending = ((void*)0);
    sys->cookie = 0;
    ih->p_sys = sys;

    for (unsigned i = 0; i < MAX_API; i++)
    {
        if (dbus_bus_name_has_owner(sys->conn, dbus_service[i], ((void*)0)))
        {
            msg_Dbg(ih, "found service %s", dbus_service[i]);
            sys->api = i;
            ih->inhibit = Inhibit;
            return VLC_SUCCESS;
        }

        msg_Dbg(ih, "cannot find service %s", dbus_service[i]);
    }

    Close(obj);
    return VLC_EGENERIC;
}
