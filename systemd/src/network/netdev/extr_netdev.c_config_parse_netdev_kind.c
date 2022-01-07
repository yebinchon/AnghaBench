
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ NetDevKind ;


 int LOG_ERR ;
 scalar_t__ _NETDEV_KIND_INVALID ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*,...) ;
 scalar_t__ netdev_kind_from_string (char const*) ;
 int netdev_kind_to_string (scalar_t__) ;

int config_parse_netdev_kind(
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

        NetDevKind k, *kind = data;

        assert(rvalue);
        assert(data);

        k = netdev_kind_from_string(rvalue);
        if (k < 0) {
                log_syntax(unit, LOG_ERR, filename, line, 0, "Failed to parse netdev kind, ignoring assignment: %s", rvalue);
                return 0;
        }

        if (*kind != _NETDEV_KIND_INVALID && *kind != k) {
                log_syntax(unit, LOG_ERR, filename, line, 0,
                           "Specified netdev kind is different from the previous value '%s', ignoring assignment: %s",
                           netdev_kind_to_string(*kind), rvalue);
                return 0;
        }

        *kind = k;

        return 0;
}
