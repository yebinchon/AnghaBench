#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {int /*<<< orphan*/  inhibit; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_12__ {unsigned int api; int /*<<< orphan*/ * conn; scalar_t__ cookie; int /*<<< orphan*/ * pending; } ;
typedef  TYPE_2__ vlc_inhibit_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_3__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DBUS_BUS_SESSION ; 
 int /*<<< orphan*/  Inhibit ; 
 unsigned int MAX_API ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * dbus_service ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *sys = FUNC6 (sizeof (*sys));
    if (FUNC9(sys == NULL))
        return VLC_ENOMEM;

    DBusError err;
    FUNC4(&err);

    sys->conn = FUNC1 (DBUS_BUS_SESSION, &err);
    if (sys->conn == NULL)
    {
        FUNC8(ih, "cannot connect to session bus: %s", err.message);
        FUNC3(&err);
        FUNC5(sys);
        return VLC_EGENERIC;
    }

    sys->pending = NULL;
    sys->cookie = 0;
    ih->p_sys = sys;

    for (unsigned i = 0; i < MAX_API; i++)
    {
        if (FUNC2(sys->conn, dbus_service[i], NULL))
        {
            FUNC7(ih, "found service %s", dbus_service[i]);
            sys->api = i;
            ih->inhibit = Inhibit;
            return VLC_SUCCESS;
        }

        FUNC7(ih, "cannot find service %s", dbus_service[i]);
    }

    FUNC0(obj);
    return VLC_EGENERIC;
}