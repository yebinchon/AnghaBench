
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;


 int assert (union in_addr_union const*) ;
 int in_addr_equal (int,union in_addr_union*,union in_addr_union*) ;
 int in_addr_mask (int,union in_addr_union*,unsigned char) ;

int in_addr_prefix_covers(int family,
                          const union in_addr_union *prefix,
                          unsigned char prefixlen,
                          const union in_addr_union *address) {

        union in_addr_union masked_prefix, masked_address;
        int r;

        assert(prefix);
        assert(address);

        masked_prefix = *prefix;
        r = in_addr_mask(family, &masked_prefix, prefixlen);
        if (r < 0)
                return r;

        masked_address = *address;
        r = in_addr_mask(family, &masked_address, prefixlen);
        if (r < 0)
                return r;

        return in_addr_equal(family, &masked_prefix, &masked_address);
}
