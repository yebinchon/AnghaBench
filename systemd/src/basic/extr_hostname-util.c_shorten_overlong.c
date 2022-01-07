
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDOM ;
 int ENOMEM ;
 int HOST_NAME_MAX ;
 int assert (char const*) ;
 int free (char*) ;
 scalar_t__ hostname_is_valid (char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strshorten (char*,int ) ;

int shorten_overlong(const char *s, char **ret) {
        char *h, *p;




        assert(s);

        h = strdup(s);
        if (!h)
                return -ENOMEM;

        if (hostname_is_valid(h, 0)) {
                *ret = h;
                return 0;
        }

        p = strchr(h, '.');
        if (p)
                *p = 0;

        strshorten(h, HOST_NAME_MAX);

        if (!hostname_is_valid(h, 0)) {
                free(h);
                return -EDOM;
        }

        *ret = h;
        return 1;
}
