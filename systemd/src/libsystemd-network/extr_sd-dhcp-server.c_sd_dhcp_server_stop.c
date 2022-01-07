
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* fd; void* fd_raw; int receive_message; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int log_dhcp_server (TYPE_1__*,char*) ;
 void* safe_close (void*) ;
 int sd_event_source_unref (int ) ;

int sd_dhcp_server_stop(sd_dhcp_server *server) {
        assert_return(server, -EINVAL);

        server->receive_message =
                sd_event_source_unref(server->receive_message);

        server->fd_raw = safe_close(server->fd_raw);
        server->fd = safe_close(server->fd);

        log_dhcp_server(server, "STOPPED");

        return 0;
}
