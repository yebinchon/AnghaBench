
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpuset_mems; } ;
typedef TYPE_1__ CGroupContext ;


 int parse_cpu_set_extend (char const*,int *,int,char const*,char const*,unsigned int,char const*) ;

int config_parse_cpuset_mems(
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

        (void) parse_cpu_set_extend(rvalue, &c->cpuset_mems, 1, unit, filename, line, lvalue);

        return 0;
}
