
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int nodename; } ;


 int FALLBACK_HOSTNAME ;
 int assert_se (int) ;
 scalar_t__ isempty (int ) ;
 char* strdup (int ) ;
 scalar_t__ streq (int ,char*) ;
 scalar_t__ uname (struct utsname*) ;

char* gethostname_malloc(void) {
        struct utsname u;





        assert_se(uname(&u) >= 0);

        if (isempty(u.nodename) || streq(u.nodename, "(none)"))
                return strdup(FALLBACK_HOSTNAME);

        return strdup(u.nodename);
}
