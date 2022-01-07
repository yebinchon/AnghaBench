
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_event ;
struct TYPE_4__ {int * event; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int assert_return (TYPE_1__*,int *) ;

sd_event *sd_dhcp_server_get_event(sd_dhcp_server *server) {
        assert_return(server, ((void*)0));

        return server->event;
}
