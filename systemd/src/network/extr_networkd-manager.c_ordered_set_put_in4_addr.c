
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
struct in_addr {int dummy; } ;
typedef struct in_addr const OrderedSet ;


 int AF_INET ;
 int EEXIST ;
 int assert (struct in_addr const*) ;
 int in_addr_to_string (int ,union in_addr_union const*,char**) ;
 int ordered_set_consume (struct in_addr const*,char*) ;

__attribute__((used)) static int ordered_set_put_in4_addr(OrderedSet *s, const struct in_addr *address) {
        char *p;
        int r;

        assert(s);
        assert(address);

        r = in_addr_to_string(AF_INET, (const union in_addr_union*) address, &p);
        if (r < 0)
                return r;

        r = ordered_set_consume(s, p);
        if (r == -EEXIST)
                return 0;

        return r;
}
