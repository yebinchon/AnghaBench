
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dhcp_use_ntp; int dhcp6_use_ntp; } ;
typedef TYPE_1__ Network ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_boolean (char const*) ;

int config_parse_dhcp_use_ntp(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Network *network = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = parse_boolean(rvalue);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Failed to parse UseNTP=%s, ignoring assignment: %m", rvalue);
                return 0;
        }

        network->dhcp_use_ntp = r;
        network->dhcp6_use_ntp = r;

        return 0;
}
