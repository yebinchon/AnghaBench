
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_gid; int pw_name; } ;
struct group {int gr_name; } ;


 int assert (char const*) ;
 struct group* getgrgid (int ) ;
 struct passwd* getpwnam (char const*) ;
 int streq (int ,char const*) ;

__attribute__((used)) static bool check_user_has_group_with_same_name(const char *name) {
        struct passwd *p;
        struct group *g;

        assert(name);

        p = getpwnam(name);
        if (!p ||
            !streq(p->pw_name, name))
                return 0;

        g = getgrgid(p->pw_gid);
        if (!g ||
            !streq(g->gr_name, name))
                return 0;

        return 1;
}
