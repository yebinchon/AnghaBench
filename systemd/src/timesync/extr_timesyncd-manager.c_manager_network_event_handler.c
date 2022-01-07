
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_8__ {scalar_t__ current_server_address; int network_monitor; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_info (char*) ;
 int manager_begin (TYPE_1__*) ;
 int manager_connect (TYPE_1__*) ;
 int manager_disconnect (TYPE_1__*) ;
 int manager_is_connected (TYPE_1__*) ;
 int manager_network_read_link_servers (TYPE_1__*) ;
 int network_is_online () ;
 int sd_network_monitor_flush (int ) ;

__attribute__((used)) static int manager_network_event_handler(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;
        bool changed, connected, online;
        int r;

        assert(m);

        sd_network_monitor_flush(m->network_monitor);


        changed = manager_network_read_link_servers(m);


        online = network_is_online();


        connected = manager_is_connected(m);

        if (connected && !online) {
                log_info("No network connectivity, watching for changes.");
                manager_disconnect(m);

        } else if ((!connected || changed) && online) {
                log_info("Network configuration changed, trying to establish connection.");

                if (m->current_server_address)
                        r = manager_begin(m);
                else
                        r = manager_connect(m);
                if (r < 0)
                        return r;
        }

        return 0;
}
