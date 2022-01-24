#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  force; } ;
typedef  TYPE_1__ vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_keystore_sys ;
struct TYPE_5__ {int /*<<< orphan*/  pf_remove; int /*<<< orphan*/  pf_find; int /*<<< orphan*/  pf_store; int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_2__ vlc_keystore ;
struct secrets_watch_data {int b_running; int /*<<< orphan*/  sem; } ;
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/  SecretService ;
typedef  int /*<<< orphan*/  GCancellable ;

/* Variables and functions */
 int /*<<< orphan*/  Find ; 
 int /*<<< orphan*/  G_BUS_NAME_WATCHER_FLAGS_NONE ; 
 int /*<<< orphan*/  G_BUS_TYPE_SESSION ; 
 int /*<<< orphan*/  Remove ; 
 int /*<<< orphan*/  SECRET_SERVICE_NONE ; 
 int /*<<< orphan*/  Store ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dbus_appeared_cb ; 
 int /*<<< orphan*/  dbus_vanished_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct secrets_watch_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(vlc_object_t *p_this)
{
    if (!p_this->force)
    {
        /* First, check if secrets service is running using g_bus_watch_name().
         * Indeed, secret_service_get_sync will spawn a service if it's not
         * running, even on non Gnome environments */
        struct secrets_watch_data watch_data;
        watch_data.b_running = false;
        FUNC6(&watch_data.sem, 0);

        guint i_id = FUNC3(G_BUS_TYPE_SESSION,
                                      "org.freedesktop.secrets",
                                      G_BUS_NAME_WATCHER_FLAGS_NONE,
                                      dbus_appeared_cb, dbus_vanished_cb,
                                      &watch_data, NULL);

        /* We are guaranteed that one of the callbacks will be invoked after
         * calling g_bus_watch_name */
        FUNC7(&watch_data.sem);

        FUNC2(i_id);
        FUNC5(&watch_data.sem);

        if (!watch_data.b_running)
            return VLC_EGENERIC;
    }

    GCancellable *p_canc = FUNC0();
    SecretService *p_ss = FUNC4(SECRET_SERVICE_NONE,
                                                  p_canc, NULL);
    FUNC1(p_canc);
    if (!p_ss)
        return VLC_EGENERIC;

    vlc_keystore *p_keystore = (vlc_keystore *)p_this;

    p_keystore->p_sys = (vlc_keystore_sys *) p_ss;
    p_keystore->pf_store = Store;
    p_keystore->pf_find = Find;
    p_keystore->pf_remove = Remove;

    return VLC_SUCCESS;
}