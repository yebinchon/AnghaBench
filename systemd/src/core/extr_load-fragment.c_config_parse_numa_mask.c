
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
typedef TYPE_1__ NUMAPolicy ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_cpu_set_extend (char const*,int *,int,char const*,char const*,unsigned int,char const*) ;

int config_parse_numa_mask(const char *unit,
                           const char *filename,
                           unsigned line,
                           const char *section,
                           unsigned section_line,
                           const char *lvalue,
                           int ltype,
                           const char *rvalue,
                           void *data,
                           void *userdata) {
        int r;
        NUMAPolicy *p = data;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = parse_cpu_set_extend(rvalue, &p->nodes, 1, unit, filename, line, lvalue);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse NUMA node mask, ignoring: %s", rvalue);
                return 0;
        }

        return r;
}
