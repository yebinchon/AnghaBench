
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ free_and_strdup (char**,char const*) ;
 int log_oom () ;

__attribute__((used)) static inline int free_and_strdup_warn(char **p, const char *s) {
        if (free_and_strdup(p, s) < 0)
                return log_oom();
        return 0;
}
