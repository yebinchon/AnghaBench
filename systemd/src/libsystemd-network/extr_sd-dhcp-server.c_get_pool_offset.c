
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool_size; int subnet; int pool_offset; int netmask; } ;
typedef TYPE_1__ sd_dhcp_server ;
typedef int be32_t ;


 int EINVAL ;
 int ERANGE ;
 int assert (TYPE_1__*) ;
 int be32toh (int) ;

__attribute__((used)) static int get_pool_offset(sd_dhcp_server *server, be32_t requested_ip) {
        assert(server);

        if (!server->pool_size)
                return -EINVAL;

        if (be32toh(requested_ip) < (be32toh(server->subnet) | server->pool_offset) ||
            be32toh(requested_ip) >= (be32toh(server->subnet) | (server->pool_offset + server->pool_size)))
                return -ERANGE;

        return be32toh(requested_ip & ~server->netmask) - server->pool_offset;
}
