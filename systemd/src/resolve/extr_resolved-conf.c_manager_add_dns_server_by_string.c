
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
typedef char const Manager ;
typedef int DnsServerType ;
typedef int DnsServer ;


 int assert (char const*) ;
 int dns_server_address_valid (int,union in_addr_union*) ;
 int * dns_server_find (int ,int,union in_addr_union*,int) ;
 int dns_server_move_back_and_unmark (int *) ;
 int dns_server_new (char const*,int *,int ,int *,int,union in_addr_union*,int) ;
 int in_addr_ifindex_from_string_auto (char const*,int*,union in_addr_union*,int*) ;
 int manager_get_first_dns_server (char const*,int ) ;

__attribute__((used)) static int manager_add_dns_server_by_string(Manager *m, DnsServerType type, const char *word) {
        union in_addr_union address;
        int family, r, ifindex = 0;
        DnsServer *s;

        assert(m);
        assert(word);

        r = in_addr_ifindex_from_string_auto(word, &family, &address, &ifindex);
        if (r < 0)
                return r;


        if (!dns_server_address_valid(family, &address))
                return 0;


        s = dns_server_find(manager_get_first_dns_server(m, type), family, &address, ifindex);
        if (s) {






                dns_server_move_back_and_unmark(s);
                return 0;
        }

        return dns_server_new(m, ((void*)0), type, ((void*)0), family, &address, ifindex);
}
