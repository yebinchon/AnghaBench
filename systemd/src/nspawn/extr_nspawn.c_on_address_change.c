
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
typedef union in_addr_union sd_netlink_message ;
typedef union in_addr_union sd_netlink ;


 int arg_expose_ports ;
 int assert (union in_addr_union*) ;
 int expose_port_execute (union in_addr_union*,int ,union in_addr_union*) ;

__attribute__((used)) static int on_address_change(sd_netlink *rtnl, sd_netlink_message *m, void *userdata) {
        union in_addr_union *exposed = userdata;

        assert(rtnl);
        assert(m);
        assert(exposed);

        expose_port_execute(rtnl, arg_expose_ports, exposed);
        return 0;
}
