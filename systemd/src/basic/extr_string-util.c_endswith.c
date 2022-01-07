
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

char* endswith(const char *s, const char *postfix) {
        size_t sl, pl;

        assert(s);
        assert(postfix);

        sl = strlen(s);
        pl = strlen(postfix);

        if (pl == 0)
                return (char*) s + sl;

        if (sl < pl)
                return ((void*)0);

        if (memcmp(s + sl - pl, postfix, pl) != 0)
                return ((void*)0);

        return (char*) s + sl - pl;
}
