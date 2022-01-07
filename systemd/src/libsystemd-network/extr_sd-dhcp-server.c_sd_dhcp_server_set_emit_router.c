
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int emit_router; } ;
typedef TYPE_1__ sd_dhcp_server ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_server_set_emit_router(sd_dhcp_server *server, int enabled) {
        assert_return(server, -EINVAL);

        if (enabled == server->emit_router)
                return 0;

        server->emit_router = enabled;

        return 1;
}
