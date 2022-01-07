
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int OrderedSet ;


 int assert (int *) ;
 int ordered_set_put_in4_addr (int *,struct in_addr const*) ;

__attribute__((used)) static int ordered_set_put_in4_addrv(OrderedSet *s,
                                     const struct in_addr *addresses,
                                     size_t n,
                                     bool (*predicate)(const struct in_addr *addr)) {
        int r, c = 0;
        size_t i;

        assert(s);
        assert(n == 0 || addresses);

        for (i = 0; i < n; i++) {
                if (predicate && !predicate(&addresses[i]))
                        continue;
                r = ordered_set_put_in4_addr(s, addresses+i);
                if (r < 0)
                        return r;

                c += r;
        }

        return c;
}
