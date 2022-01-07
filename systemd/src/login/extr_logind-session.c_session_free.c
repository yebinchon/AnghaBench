
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int sessions; TYPE_2__* pending_switch; TYPE_2__* active; } ;
struct TYPE_15__ {TYPE_2__* display; int sessions; } ;
struct TYPE_14__ {scalar_t__ fifo_path; scalar_t__ state_file; int fifo_fd; int fifo_event_source; scalar_t__ id; TYPE_1__* manager; scalar_t__ desktop; scalar_t__ service; scalar_t__ remote_user; scalar_t__ remote_host; scalar_t__ display; scalar_t__ tty; int create_message; scalar_t__ scope_job; int leader; scalar_t__ scope; TYPE_7__* seat; TYPE_3__* user; int devices; int timer_event_source; scalar_t__ in_gc_queue; } ;
struct TYPE_13__ {int sessions; int sessions_by_leader; int session_units; int session_gc_queue; } ;
typedef int SessionDevice ;
typedef TYPE_2__ Session ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int PID_TO_PTR (int ) ;
 int free (scalar_t__) ;
 int gc_queue ;
 int * hashmap_first (int ) ;
 int hashmap_free (int ) ;
 int hashmap_remove (int ,scalar_t__) ;
 int hashmap_remove_value (int ,int ,TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 scalar_t__ pid_is_valid (int ) ;
 int safe_close (int ) ;
 int sd_bus_message_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int seat_evict_position (TYPE_7__*,TYPE_2__*) ;
 int session_device_free (int *) ;
 int session_drop_controller (TYPE_2__*) ;
 int sessions_by_seat ;
 int sessions_by_user ;
 int user_update_last_session_timer (TYPE_3__*) ;

Session* session_free(Session *s) {
        SessionDevice *sd;

        if (!s)
                return ((void*)0);

        if (s->in_gc_queue)
                LIST_REMOVE(gc_queue, s->manager->session_gc_queue, s);

        s->timer_event_source = sd_event_source_unref(s->timer_event_source);

        session_drop_controller(s);

        while ((sd = hashmap_first(s->devices)))
                session_device_free(sd);

        hashmap_free(s->devices);

        if (s->user) {
                LIST_REMOVE(sessions_by_user, s->user->sessions, s);

                if (s->user->display == s)
                        s->user->display = ((void*)0);

                user_update_last_session_timer(s->user);
        }

        if (s->seat) {
                if (s->seat->active == s)
                        s->seat->active = ((void*)0);
                if (s->seat->pending_switch == s)
                        s->seat->pending_switch = ((void*)0);

                seat_evict_position(s->seat, s);
                LIST_REMOVE(sessions_by_seat, s->seat->sessions, s);
        }

        if (s->scope) {
                hashmap_remove(s->manager->session_units, s->scope);
                free(s->scope);
        }

        if (pid_is_valid(s->leader))
                (void) hashmap_remove_value(s->manager->sessions_by_leader, PID_TO_PTR(s->leader), s);

        free(s->scope_job);

        sd_bus_message_unref(s->create_message);

        free(s->tty);
        free(s->display);
        free(s->remote_host);
        free(s->remote_user);
        free(s->service);
        free(s->desktop);

        hashmap_remove(s->manager->sessions, s->id);

        sd_event_source_unref(s->fifo_event_source);
        safe_close(s->fifo_fd);



        free(s->state_file);
        free(s->fifo_path);

        return mfree(s);
}
