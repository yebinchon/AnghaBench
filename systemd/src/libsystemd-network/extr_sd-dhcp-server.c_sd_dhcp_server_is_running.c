
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int receive_message; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int assert_return (TYPE_1__*,int) ;

int sd_dhcp_server_is_running(sd_dhcp_server *server) {
        assert_return(server, 0);

        return !!server->receive_message;
}
