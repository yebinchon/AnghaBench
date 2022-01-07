
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_5__ {int addresses_foreign; int addresses; } ;
typedef TYPE_1__ Link ;
typedef int Address ;


 int ENOENT ;
 int address_add_internal (TYPE_1__*,int *,int,union in_addr_union const*,unsigned char,int **) ;
 int address_get (TYPE_1__*,int,union in_addr_union const*,unsigned char,int **) ;
 int address_hash_ops ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;
 int set_remove (int ,int *) ;

int address_add(Link *link, int family, const union in_addr_union *in_addr, unsigned char prefixlen, Address **ret) {
        Address *address;
        int r;

        r = address_get(link, family, in_addr, prefixlen, &address);
        if (r == -ENOENT) {

                r = address_add_internal(link, &link->addresses, family, in_addr, prefixlen, &address);
                if (r < 0)
                        return r;
        } else if (r == 0) {

                r = set_ensure_allocated(&link->addresses, &address_hash_ops);
                if (r < 0)
                        return r;

                r = set_put(link->addresses, address);
                if (r < 0)
                        return r;

                set_remove(link->addresses_foreign, address);
        } else if (r == 1) {

                ;
        } else
                return r;

        if (ret)
                *ret = address;

        return 0;
}
