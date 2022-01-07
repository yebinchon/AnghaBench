
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALID_CHARS_ENV_NAME ;
 int _SC_ARG_MAX ;
 int strchr (int ,char const) ;
 scalar_t__ sysconf (int ) ;

__attribute__((used)) static bool env_name_is_valid_n(const char *e, size_t n) {
        const char *p;

        if (!e)
                return 0;

        if (n <= 0)
                return 0;

        if (e[0] >= '0' && e[0] <= '9')
                return 0;






        if (n > (size_t) sysconf(_SC_ARG_MAX) - 2)
                return 0;

        for (p = e; p < e + n; p++)
                if (!strchr(VALID_CHARS_ENV_NAME, *p))
                        return 0;

        return 1;
}
