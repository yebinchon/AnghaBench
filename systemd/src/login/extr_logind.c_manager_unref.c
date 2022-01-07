
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int User ;
struct TYPE_6__ {int action_job; int wall_message; int scheduled_shutdown_tty; int scheduled_shutdown_type; int kill_exclude_users; int kill_only_users; int reserve_vt_fd; int event; int bus; int polkit_registry; scalar_t__ unlink_nologin; int device_button_monitor; int device_vcsa_monitor; int device_monitor; int device_seat_monitor; int console_active_fd; int utmp_event_source; int lid_switch_ignore_event_source; int console_active_event_source; int wall_message_timeout_source; int nologin_timeout_source; int scheduled_shutdown_timeout_source; int inhibit_timeout_source; int idle_action_event_source; int session_units; int user_units; int brightness_writers; int buttons; int inhibitors; int users; int sessions_by_leader; int sessions; int seats; int devices; } ;
typedef int Session ;
typedef int Seat ;
typedef TYPE_1__ Manager ;
typedef int Inhibitor ;
typedef int Device ;
typedef int Button ;


 int bus_verify_polkit_async_registry_free (int ) ;
 int button_free (int *) ;
 int device_free (int *) ;
 int free (int ) ;
 void* hashmap_first (int ) ;
 int hashmap_free (int ) ;
 int inhibitor_free (int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_device_monitor_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int seat_free (int *) ;
 int session_free (int *) ;
 int strv_free (int ) ;
 int unlink_or_warn (char*) ;
 int user_free (int *) ;

__attribute__((used)) static Manager* manager_unref(Manager *m) {
        Session *session;
        User *u;
        Device *d;
        Seat *s;
        Inhibitor *i;
        Button *b;

        if (!m)
                return ((void*)0);

        while ((session = hashmap_first(m->sessions)))
                session_free(session);

        while ((u = hashmap_first(m->users)))
                user_free(u);

        while ((d = hashmap_first(m->devices)))
                device_free(d);

        while ((s = hashmap_first(m->seats)))
                seat_free(s);

        while ((i = hashmap_first(m->inhibitors)))
                inhibitor_free(i);

        while ((b = hashmap_first(m->buttons)))
                button_free(b);

        hashmap_free(m->devices);
        hashmap_free(m->seats);
        hashmap_free(m->sessions);
        hashmap_free(m->sessions_by_leader);
        hashmap_free(m->users);
        hashmap_free(m->inhibitors);
        hashmap_free(m->buttons);
        hashmap_free(m->brightness_writers);

        hashmap_free(m->user_units);
        hashmap_free(m->session_units);

        sd_event_source_unref(m->idle_action_event_source);
        sd_event_source_unref(m->inhibit_timeout_source);
        sd_event_source_unref(m->scheduled_shutdown_timeout_source);
        sd_event_source_unref(m->nologin_timeout_source);
        sd_event_source_unref(m->wall_message_timeout_source);

        sd_event_source_unref(m->console_active_event_source);
        sd_event_source_unref(m->lid_switch_ignore_event_source);





        safe_close(m->console_active_fd);

        sd_device_monitor_unref(m->device_seat_monitor);
        sd_device_monitor_unref(m->device_monitor);
        sd_device_monitor_unref(m->device_vcsa_monitor);
        sd_device_monitor_unref(m->device_button_monitor);

        if (m->unlink_nologin)
                (void) unlink_or_warn("/run/nologin");

        bus_verify_polkit_async_registry_free(m->polkit_registry);

        sd_bus_flush_close_unref(m->bus);
        sd_event_unref(m->event);

        safe_close(m->reserve_vt_fd);

        strv_free(m->kill_only_users);
        strv_free(m->kill_exclude_users);

        free(m->scheduled_shutdown_type);
        free(m->scheduled_shutdown_tty);
        free(m->wall_message);
        free(m->action_job);

        return mfree(m);
}
