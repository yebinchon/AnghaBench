
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_9__ {void* exec_fd_event_source; void* timer_event_source; int accept_socket; int peer; void* usb_function_strings; void* usb_function_descriptors; void* bus_name_owner; void* bus_name; int success_status; int restart_force_status; int restart_prevent_status; int dynamic_creds; int * main_command; int * control_command; int exec_command; int exec_runtime; void* status_text; void* pid_file; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* SERVICE (int *) ;
 int _SERVICE_EXEC_COMMAND_MAX ;
 int assert (TYPE_1__*) ;
 int dynamic_creds_unref (int *) ;
 int exec_command_free_array (int ,int ) ;
 int exec_runtime_unref (int ,int) ;
 int exit_status_set_free (int *) ;
 void* mfree (void*) ;
 void* sd_event_source_unref (void*) ;
 int service_close_socket_fd (TYPE_1__*) ;
 int service_release_resources (int *) ;
 int service_stop_watchdog (TYPE_1__*) ;
 int service_unwatch_control_pid (TYPE_1__*) ;
 int service_unwatch_main_pid (TYPE_1__*) ;
 int service_unwatch_pid_file (TYPE_1__*) ;
 int socket_peer_unref (int ) ;
 int unit_ref_unset (int *) ;
 int unit_unwatch_bus_name (int *,void*) ;

__attribute__((used)) static void service_done(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);

        s->pid_file = mfree(s->pid_file);
        s->status_text = mfree(s->status_text);

        s->exec_runtime = exec_runtime_unref(s->exec_runtime, 0);
        exec_command_free_array(s->exec_command, _SERVICE_EXEC_COMMAND_MAX);
        s->control_command = ((void*)0);
        s->main_command = ((void*)0);

        dynamic_creds_unref(&s->dynamic_creds);

        exit_status_set_free(&s->restart_prevent_status);
        exit_status_set_free(&s->restart_force_status);
        exit_status_set_free(&s->success_status);



        service_unwatch_main_pid(s);
        service_unwatch_control_pid(s);
        service_unwatch_pid_file(s);

        if (s->bus_name) {
                unit_unwatch_bus_name(u, s->bus_name);
                s->bus_name = mfree(s->bus_name);
        }

        s->bus_name_owner = mfree(s->bus_name_owner);

        s->usb_function_descriptors = mfree(s->usb_function_descriptors);
        s->usb_function_strings = mfree(s->usb_function_strings);

        service_close_socket_fd(s);
        s->peer = socket_peer_unref(s->peer);

        unit_ref_unset(&s->accept_socket);

        service_stop_watchdog(s);

        s->timer_event_source = sd_event_source_unref(s->timer_event_source);
        s->exec_fd_event_source = sd_event_source_unref(s->exec_fd_event_source);

        service_release_resources(u);
}
