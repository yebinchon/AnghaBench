
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int server_string; int address; int family; } ;
typedef TYPE_1__ DnsServer ;


 int assert (TYPE_1__*) ;
 int dns_server_ifindex (TYPE_1__*) ;
 int in_addr_ifindex_to_string (int ,int *,int ,int *) ;
 char const* strna (int ) ;

const char *dns_server_string(DnsServer *server) {
        assert(server);

        if (!server->server_string)
                (void) in_addr_ifindex_to_string(server->family, &server->address, dns_server_ifindex(server), &server->server_string);

        return strna(server->server_string);
}
