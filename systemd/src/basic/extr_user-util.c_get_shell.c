
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char const* pw_shell; } ;


 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 char* NOLOGIN ;
 scalar_t__ UID_NOBODY ;
 int assert (char**) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 scalar_t__ path_is_absolute (char const*) ;
 scalar_t__ path_is_valid (char const*) ;
 char* path_simplify (char*,int) ;
 char* secure_getenv (char*) ;
 char* strdup (char const*) ;
 scalar_t__ synthesize_nobody () ;

int get_shell(char **_s) {
        struct passwd *p;
        const char *e;
        char *s;
        uid_t u;

        assert(_s);


        e = secure_getenv("SHELL");
        if (e && path_is_valid(e) && path_is_absolute(e)) {
                s = strdup(e);
                if (!s)
                        return -ENOMEM;

                *_s = path_simplify(s, 1);
                return 0;
        }


        u = getuid();
        if (u == 0) {
                s = strdup("/bin/sh");
                if (!s)
                        return -ENOMEM;

                *_s = s;
                return 0;
        }
        if (synthesize_nobody() &&
            u == UID_NOBODY) {
                s = strdup(NOLOGIN);
                if (!s)
                        return -ENOMEM;

                *_s = s;
                return 0;
        }


        errno = 0;
        p = getpwuid(u);
        if (!p)
                return errno_or_else(ESRCH);

        if (!path_is_valid(p->pw_shell) ||
            !path_is_absolute(p->pw_shell))
                return -EINVAL;

        s = strdup(p->pw_shell);
        if (!s)
                return -ENOMEM;

        *_s = path_simplify(s, 1);
        return 0;
}
