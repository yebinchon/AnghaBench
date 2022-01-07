
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int pw_name; } ;
struct group {scalar_t__ gr_gid; int gr_name; } ;


 scalar_t__ GID_NOBODY ;
 int NOBODY_GROUP_NAME ;
 int NOBODY_USER_NAME ;
 scalar_t__ UID_NOBODY ;
 struct group* getgrgid (scalar_t__) ;
 struct group* getgrnam (int ) ;
 struct passwd* getpwnam (int ) ;
 struct passwd* getpwuid (scalar_t__) ;
 int streq (int ,int ) ;
 int synthesize_nobody () ;

__attribute__((used)) static bool check_nobody_user_and_group(void) {
        static int cache = -1;
        struct passwd *p;
        struct group *g;

        if (cache >= 0)
                return !!cache;

        if (!synthesize_nobody())
                goto invalid;

        p = getpwnam(NOBODY_USER_NAME);
        if (!p ||
            !streq(p->pw_name, NOBODY_USER_NAME) ||
            p->pw_uid != UID_NOBODY ||
            p->pw_gid != GID_NOBODY)
                goto invalid;

        p = getpwuid(UID_NOBODY);
        if (!p ||
            !streq(p->pw_name, NOBODY_USER_NAME) ||
            p->pw_uid != UID_NOBODY ||
            p->pw_gid != GID_NOBODY)
                goto invalid;

        g = getgrnam(NOBODY_GROUP_NAME);
        if (!g ||
            !streq(g->gr_name, NOBODY_GROUP_NAME) ||
            g->gr_gid != GID_NOBODY)
                goto invalid;

        g = getgrgid(GID_NOBODY);
        if (!g ||
            !streq(g->gr_name, NOBODY_GROUP_NAME) ||
            g->gr_gid != GID_NOBODY)
                goto invalid;

        cache = 1;
        return 1;

invalid:
        cache = 0;
        return 0;
}
