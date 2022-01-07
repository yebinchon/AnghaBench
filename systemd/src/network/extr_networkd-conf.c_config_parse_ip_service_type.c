
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPTOS_CLASS_CS4 ;
 int IPTOS_CLASS_CS6 ;
 int LOG_WARNING ;
 int assert (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_ip_service_type(
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

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        if (streq(rvalue, "CS4"))
                *((int *)data) = IPTOS_CLASS_CS4;
        else if (streq(rvalue, "CS6"))
                *((int *)data) = IPTOS_CLASS_CS6;
        else
                log_syntax(unit, LOG_WARNING, filename, line, 0,
                           "Failed to parse IPServiceType type '%s', ignoring.", rvalue);

        return 0;
}
