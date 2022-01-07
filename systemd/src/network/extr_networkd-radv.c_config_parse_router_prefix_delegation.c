
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ router_prefix_delegation; } ;
typedef scalar_t__ RADVPrefixDelegation ;
typedef TYPE_1__ Network ;


 int EINVAL ;
 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 scalar_t__ radv_prefix_delegation_from_string (char const*) ;

int config_parse_router_prefix_delegation(
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

        Network *network = userdata;
        RADVPrefixDelegation d;

        assert(filename);
        assert(section);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        d = radv_prefix_delegation_from_string(rvalue);
        if (d < 0) {
                log_syntax(unit, LOG_ERR, filename, line, -EINVAL, "Invalid router prefix delegation '%s', ignoring assignment.", rvalue);
                return 0;
        }

        network->router_prefix_delegation = d;

        return 0;
}
