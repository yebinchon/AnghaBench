
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 size_t strlen (char const*) ;

char* endswith_no_case(const char *s, const char *postfix) {
        size_t sl, pl;

        assert(s);
        assert(postfix);

        sl = strlen(s);
        pl = strlen(postfix);

        if (pl == 0)
                return (char*) s + sl;

        if (sl < pl)
                return ((void*)0);

        if (strcasecmp(s + sl - pl, postfix) != 0)
                return ((void*)0);

        return (char*) s + sl - pl;
}
