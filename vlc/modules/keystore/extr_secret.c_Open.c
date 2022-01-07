
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int force; } ;
typedef TYPE_1__ vlc_object_t ;
typedef int vlc_keystore_sys ;
struct TYPE_5__ {int pf_remove; int pf_find; int pf_store; int * p_sys; } ;
typedef TYPE_2__ vlc_keystore ;
struct secrets_watch_data {int b_running; int sem; } ;
typedef int guint ;
typedef int SecretService ;
typedef int GCancellable ;


 int Find ;
 int G_BUS_NAME_WATCHER_FLAGS_NONE ;
 int G_BUS_TYPE_SESSION ;
 int Remove ;
 int SECRET_SERVICE_NONE ;
 int Store ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * cancellable_register () ;
 int cancellable_unregister (int *) ;
 int dbus_appeared_cb ;
 int dbus_vanished_cb ;
 int g_bus_unwatch_name (int ) ;
 int g_bus_watch_name (int ,char*,int ,int ,int ,struct secrets_watch_data*,int *) ;
 int * secret_service_get_sync (int ,int *,int *) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait_i11e (int *) ;

__attribute__((used)) static int
Open(vlc_object_t *p_this)
{
    if (!p_this->force)
    {



        struct secrets_watch_data watch_data;
        watch_data.b_running = 0;
        vlc_sem_init(&watch_data.sem, 0);

        guint i_id = g_bus_watch_name(G_BUS_TYPE_SESSION,
                                      "org.freedesktop.secrets",
                                      G_BUS_NAME_WATCHER_FLAGS_NONE,
                                      dbus_appeared_cb, dbus_vanished_cb,
                                      &watch_data, ((void*)0));



        vlc_sem_wait_i11e(&watch_data.sem);

        g_bus_unwatch_name(i_id);
        vlc_sem_destroy(&watch_data.sem);

        if (!watch_data.b_running)
            return VLC_EGENERIC;
    }

    GCancellable *p_canc = cancellable_register();
    SecretService *p_ss = secret_service_get_sync(SECRET_SERVICE_NONE,
                                                  p_canc, ((void*)0));
    cancellable_unregister(p_canc);
    if (!p_ss)
        return VLC_EGENERIC;

    vlc_keystore *p_keystore = (vlc_keystore *)p_this;

    p_keystore->p_sys = (vlc_keystore_sys *) p_ss;
    p_keystore->pf_store = Store;
    p_keystore->pf_find = Find;
    p_keystore->pf_remove = Remove;

    return VLC_SUCCESS;
}
