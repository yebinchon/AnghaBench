
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pivot_root_old; int pivot_root_new; } ;
typedef TYPE_1__ Settings ;


 int LOG_ERR ;
 int assert (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int pivot_root_parse (int *,int *,char const*) ;

int config_parse_pivot_root(
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

        Settings *settings = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        r = pivot_root_parse(&settings->pivot_root_new, &settings->pivot_root_old, rvalue);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Invalid pivot root mount specification %s: %m", rvalue);
                return 0;
        }

        return 0;
}
