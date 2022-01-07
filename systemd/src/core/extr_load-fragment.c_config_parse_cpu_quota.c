
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int usec_t ;
struct TYPE_2__ {unsigned int cpu_quota_per_sec_usec; } ;
typedef TYPE_1__ CGroupContext ;


 int LOG_ERR ;
 unsigned int USEC_INFINITY ;
 unsigned int USEC_PER_SEC ;
 int assert (char const*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_permille_unbounded (char const*) ;

int config_parse_cpu_quota(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        CGroupContext *c = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        if (isempty(rvalue)) {
                c->cpu_quota_per_sec_usec = USEC_INFINITY;
                return 0;
        }

        r = parse_permille_unbounded(rvalue);
        if (r <= 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Invalid CPU quota '%s', ignoring.", rvalue);
                return 0;
        }

        c->cpu_quota_per_sec_usec = ((usec_t) r * USEC_PER_SEC) / 1000U;
        return 0;
}
