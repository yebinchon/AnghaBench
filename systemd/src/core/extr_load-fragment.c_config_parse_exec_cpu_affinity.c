
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_set; } ;
typedef TYPE_1__ ExecContext ;


 int assert (void*) ;
 int parse_cpu_set_extend (char const*,int *,int,char const*,char const*,unsigned int,char const*) ;

int config_parse_exec_cpu_affinity(const char *unit,
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

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        return parse_cpu_set_extend(rvalue, &c->cpu_set, 1, unit, filename, line, lvalue);
}
