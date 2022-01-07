
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
dbus_vanished_cb(GDBusConnection *connection, const gchar *name,
                gpointer user_data)
{
    (void) connection; (void) name;
    struct secrets_watch_data *p_watch_data = user_data;
    p_watch_data->b_running = 0;
    vlc_sem_post(&p_watch_data->sem);
}
