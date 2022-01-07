
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_9__ {int timer_event_source; void* fdname; void* group; void* user; int symlinks; void* smack_ip_out; void* smack_ip_in; void* smack; void* bind_to_device; void* tcp_congestion; int service; int dynamic_creds; int * control_command; int exec_command; int exec_runtime; int peers_by_address; } ;
struct TYPE_8__ {int * socket; } ;
typedef TYPE_1__ SocketPeer ;
typedef TYPE_2__ Socket ;


 TYPE_2__* SOCKET (int *) ;
 int _SOCKET_EXEC_COMMAND_MAX ;
 int assert (TYPE_2__*) ;
 int dynamic_creds_unref (int *) ;
 int exec_command_free_array (int ,int ) ;
 int exec_runtime_unref (int ,int) ;
 void* mfree (void*) ;
 int sd_event_source_unref (int ) ;
 int set_free (int ) ;
 TYPE_1__* set_steal_first (int ) ;
 int socket_free_ports (TYPE_2__*) ;
 int socket_unwatch_control_pid (TYPE_2__*) ;
 int strv_free (int ) ;
 int unit_ref_unset (int *) ;

__attribute__((used)) static void socket_done(Unit *u) {
        Socket *s = SOCKET(u);
        SocketPeer *p;

        assert(s);

        socket_free_ports(s);

        while ((p = set_steal_first(s->peers_by_address)))
                p->socket = ((void*)0);

        s->peers_by_address = set_free(s->peers_by_address);

        s->exec_runtime = exec_runtime_unref(s->exec_runtime, 0);
        exec_command_free_array(s->exec_command, _SOCKET_EXEC_COMMAND_MAX);
        s->control_command = ((void*)0);

        dynamic_creds_unref(&s->dynamic_creds);

        socket_unwatch_control_pid(s);

        unit_ref_unset(&s->service);

        s->tcp_congestion = mfree(s->tcp_congestion);
        s->bind_to_device = mfree(s->bind_to_device);

        s->smack = mfree(s->smack);
        s->smack_ip_in = mfree(s->smack_ip_in);
        s->smack_ip_out = mfree(s->smack_ip_out);

        strv_free(s->symlinks);

        s->user = mfree(s->user);
        s->group = mfree(s->group);

        s->fdname = mfree(s->fdname);

        s->timer_event_source = sd_event_source_unref(s->timer_event_source);
}
