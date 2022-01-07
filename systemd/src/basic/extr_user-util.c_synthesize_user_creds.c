
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;
typedef int UserCredsFlags ;


 int ENOMEDIUM ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 scalar_t__ GID_NOBODY ;
 char* NOBODY_USER_NAME ;
 char* NOLOGIN ;
 scalar_t__ STR_IN_SET (char const*,char*,char*) ;
 scalar_t__ UID_NOBODY ;
 int USER_CREDS_CLEAN ;
 scalar_t__ synthesize_nobody () ;

__attribute__((used)) static int synthesize_user_creds(
                const char **username,
                uid_t *uid, gid_t *gid,
                const char **home,
                const char **shell,
                UserCredsFlags flags) {




        if (STR_IN_SET(*username, "root", "0")) {
                *username = "root";

                if (uid)
                        *uid = 0;
                if (gid)
                        *gid = 0;

                if (home)
                        *home = "/root";

                if (shell)
                        *shell = "/bin/sh";

                return 0;
        }

        if (synthesize_nobody() &&
            STR_IN_SET(*username, NOBODY_USER_NAME, "65534")) {
                *username = NOBODY_USER_NAME;

                if (uid)
                        *uid = UID_NOBODY;
                if (gid)
                        *gid = GID_NOBODY;

                if (home)
                        *home = FLAGS_SET(flags, USER_CREDS_CLEAN) ? ((void*)0) : "/";

                if (shell)
                        *shell = FLAGS_SET(flags, USER_CREDS_CLEAN) ? ((void*)0) : NOLOGIN;

                return 0;
        }

        return -ENOMEDIUM;
}
