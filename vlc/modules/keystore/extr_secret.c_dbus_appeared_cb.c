
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secrets_watch_data {int b_running; int sem; } ;
typedef struct secrets_watch_data* gpointer ;
typedef int gchar ;
typedef int GDBusConnection ;


 int vlc_sem_post (int *) ;

__attribute__((used)) static void
dbus_appeared_cb(GDBusConnection *connection, const gchar *name,
                const gchar *name_owner, gpointer user_data)
{
    (void) connection; (void) name; (void)name_owner;
    struct secrets_watch_data *p_watch_data = user_data;
    p_watch_data->b_running = 1;
    vlc_sem_post(&p_watch_data->sem);
}
