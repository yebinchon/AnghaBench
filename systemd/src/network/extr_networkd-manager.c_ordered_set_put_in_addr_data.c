
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr_data {int address; int family; } ;
typedef struct in_addr_data const OrderedSet ;


 int EEXIST ;
 int assert (struct in_addr_data const*) ;
 int in_addr_to_string (int ,int *,char**) ;
 int ordered_set_consume (struct in_addr_data const*,char*) ;

__attribute__((used)) static int ordered_set_put_in_addr_data(OrderedSet *s, const struct in_addr_data *address) {
        char *p;
        int r;

        assert(s);
        assert(address);

        r = in_addr_to_string(address->family, &address->address, &p);
        if (r < 0)
                return r;

        r = ordered_set_consume(s, p);
        if (r == -EEXIST)
                return 0;

        return r;
}
