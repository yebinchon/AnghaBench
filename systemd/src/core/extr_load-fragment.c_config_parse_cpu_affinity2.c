
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CPUSet ;


 int assert (int *) ;
 int parse_cpu_set_extend (char const*,int *,int,char const*,char const*,unsigned int,char const*) ;

int config_parse_cpu_affinity2(
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

        CPUSet *affinity = data;

        assert(affinity);

        (void) parse_cpu_set_extend(rvalue, affinity, 1, unit, filename, line, lvalue);

        return 0;
}
