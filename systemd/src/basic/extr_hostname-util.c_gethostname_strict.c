
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int nodename; } ;


 int ENOMEM ;
 int ENXIO ;
 int assert_se (int) ;
 scalar_t__ is_localhost (int ) ;
 scalar_t__ isempty (int ) ;
 char* strdup (int ) ;
 scalar_t__ streq (int ,char*) ;
 scalar_t__ uname (struct utsname*) ;

int gethostname_strict(char **ret) {
        struct utsname u;
        char *k;



        assert_se(uname(&u) >= 0);

        if (isempty(u.nodename))
                return -ENXIO;

        if (streq(u.nodename, "(none)"))
                return -ENXIO;

        if (is_localhost(u.nodename))
                return -ENXIO;

        k = strdup(u.nodename);
        if (!k)
                return -ENOMEM;

        *ret = k;
        return 0;
}
