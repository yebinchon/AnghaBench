
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr_data {int dummy; } ;
typedef int OrderedSet ;


 int assert (int *) ;
 int ordered_set_put_in_addr_data (int *,struct in_addr_data const*) ;

__attribute__((used)) static int ordered_set_put_in_addr_datav(OrderedSet *s, const struct in_addr_data *addresses, unsigned n) {
        int r, c = 0;
        unsigned i;

        assert(s);
        assert(addresses || n == 0);

        for (i = 0; i < n; i++) {
                r = ordered_set_put_in_addr_data(s, addresses+i);
                if (r < 0)
                        return r;

                c += r;
        }

        return c;
}
