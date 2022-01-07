
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transient_environment; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_oom () ;
 int sanitize_environment (char**) ;
 char** strv_env_merge (int,int ,char**) ;
 int strv_free_and_replace (int ,char**) ;
 scalar_t__ strv_isempty (char**) ;

int manager_transient_environment_add(Manager *m, char **plus) {
        char **a;

        assert(m);

        if (strv_isempty(plus))
                return 0;

        a = strv_env_merge(2, m->transient_environment, plus);
        if (!a)
                return log_oom();

        sanitize_environment(a);

        return strv_free_and_replace(m->transient_environment, a);
}
