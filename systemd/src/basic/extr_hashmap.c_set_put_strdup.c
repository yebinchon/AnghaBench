
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const Set ;


 int ENOMEM ;
 int assert (char const*) ;
 int set_consume (char const*,char*) ;
 scalar_t__ set_contains (char const*,char*) ;
 char* strdup (char const*) ;

int set_put_strdup(Set *s, const char *p) {
        char *c;

        assert(s);
        assert(p);

        if (set_contains(s, (char*) p))
                return 0;

        c = strdup(p);
        if (!c)
                return -ENOMEM;

        return set_consume(s, c);
}
