
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const OrderedSet ;


 int EEXIST ;
 int ENOMEM ;
 int assert (char const*) ;
 int ordered_set_consume (char const*,char*) ;
 char* strdup (char const*) ;

int ordered_set_put_strdup(OrderedSet *s, const char *p) {
        char *c;
        int r;

        assert(s);
        assert(p);

        c = strdup(p);
        if (!c)
                return -ENOMEM;

        r = ordered_set_consume(s, c);
        if (r == -EEXIST)
                return 0;

        return r;
}
