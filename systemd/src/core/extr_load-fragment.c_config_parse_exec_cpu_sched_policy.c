
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_sched_set; int cpu_sched_policy; scalar_t__ cpu_sched_priority; } ;
typedef TYPE_1__ ExecContext ;


 scalar_t__ CLAMP (scalar_t__,int ,int ) ;
 int LOG_ERR ;
 int SCHED_OTHER ;
 int assert (void*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 int sched_get_priority_max (int) ;
 int sched_get_priority_min (int) ;
 int sched_policy_from_string (char const*) ;

int config_parse_exec_cpu_sched_policy(const char *unit,
                                       const char *filename,
                                       unsigned line,
                                       const char *section,
                                       unsigned section_line,
                                       const char *lvalue,
                                       int ltype,
                                       const char *rvalue,
                                       void *data,
                                       void *userdata) {

        ExecContext *c = data;
        int x;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                c->cpu_sched_set = 0;
                c->cpu_sched_policy = SCHED_OTHER;
                c->cpu_sched_priority = 0;
                return 0;
        }

        x = sched_policy_from_string(rvalue);
        if (x < 0) {
                log_syntax(unit, LOG_ERR, filename, line, 0, "Failed to parse CPU scheduling policy, ignoring: %s", rvalue);
                return 0;
        }

        c->cpu_sched_policy = x;

        c->cpu_sched_priority = CLAMP(c->cpu_sched_priority, sched_get_priority_min(x), sched_get_priority_max(x));
        c->cpu_sched_set = 1;

        return 0;
}
