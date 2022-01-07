
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_timer_property ;
 int assert (char const*) ;
 int log_oom () ;
 char* strjoin (char const*,char*,char const*) ;
 scalar_t__ strv_consume (int *,char*) ;

__attribute__((used)) static int add_timer_property(const char *name, const char *val) {
        char *p;

        assert(name);
        assert(val);

        p = strjoin(name, "=", val);
        if (!p)
                return log_oom();

        if (strv_consume(&arg_timer_property, p) < 0)
                return log_oom();

        return 0;
}
