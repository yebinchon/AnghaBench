
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expose_ports; } ;
typedef TYPE_1__ Settings ;


 int EEXIST ;
 int LOG_ERR ;
 int assert (char const*) ;
 int expose_port_parse (int *,char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;

int config_parse_expose_port(
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

        Settings *s = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        r = expose_port_parse(&s->expose_ports, rvalue);
        if (r == -EEXIST) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Duplicate port specification, ignoring: %s", rvalue);
                return 0;
        }
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse host port %s: %m", rvalue);
                return 0;
        }

        return 0;
}
