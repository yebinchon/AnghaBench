
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char const* pw_dir; } ;


 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
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

int get_home_dir(char **_h) {
        struct passwd *p;
        const char *e;
        char *h;
        uid_t u;

        assert(_h);


        e = secure_getenv("HOME");
        if (e && path_is_valid(e) && path_is_absolute(e)) {
                h = strdup(e);
                if (!h)
                        return -ENOMEM;

                *_h = path_simplify(h, 1);
                return 0;
        }


        u = getuid();
        if (u == 0) {
                h = strdup("/root");
                if (!h)
                        return -ENOMEM;

                *_h = h;
                return 0;
        }
        if (synthesize_nobody() &&
            u == UID_NOBODY) {
                h = strdup("/");
                if (!h)
                        return -ENOMEM;

                *_h = h;
                return 0;
        }


        errno = 0;
        p = getpwuid(u);
        if (!p)
                return errno_or_else(ESRCH);

        if (!path_is_valid(p->pw_dir) ||
            !path_is_absolute(p->pw_dir))
                return -EINVAL;

        h = strdup(p->pw_dir);
        if (!h)
                return -ENOMEM;

        *_h = path_simplify(h, 1);
        return 0;
}
