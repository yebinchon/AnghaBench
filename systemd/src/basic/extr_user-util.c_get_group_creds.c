
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; int gr_gid; } ;
typedef int gid_t ;
typedef int UserCredsFlags ;


 int EBADMSG ;
 int ESRCH ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 int GID_NOBODY ;
 char* NOBODY_GROUP_NAME ;
 scalar_t__ STR_IN_SET (char const*,char*,char*) ;
 int USER_CREDS_ALLOW_MISSING ;
 int assert (char const**) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 struct group* getgrgid (int ) ;
 struct group* getgrnam (char const*) ;
 int gid_is_valid (int ) ;
 scalar_t__ parse_gid (char const*,int *) ;
 scalar_t__ synthesize_nobody () ;

int get_group_creds(const char **groupname, gid_t *gid, UserCredsFlags flags) {
        struct group *g;
        gid_t id;

        assert(groupname);



        if (STR_IN_SET(*groupname, "root", "0")) {
                *groupname = "root";

                if (gid)
                        *gid = 0;

                return 0;
        }

        if (synthesize_nobody() &&
            STR_IN_SET(*groupname, NOBODY_GROUP_NAME, "65534")) {
                *groupname = NOBODY_GROUP_NAME;

                if (gid)
                        *gid = GID_NOBODY;

                return 0;
        }

        if (parse_gid(*groupname, &id) >= 0) {
                errno = 0;
                g = getgrgid(id);

                if (g)
                        *groupname = g->gr_name;
                else if (FLAGS_SET(flags, USER_CREDS_ALLOW_MISSING)) {
                        if (gid)
                                *gid = id;

                        return 0;
                }
        } else {
                errno = 0;
                g = getgrnam(*groupname);
        }

        if (!g)
                return errno_or_else(ESRCH);

        if (gid) {
                if (!gid_is_valid(g->gr_gid))
                        return -EBADMSG;

                *gid = g->gr_gid;
        }

        return 0;
}
