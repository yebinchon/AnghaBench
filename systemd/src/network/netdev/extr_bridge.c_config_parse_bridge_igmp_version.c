
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ igmp_version; } ;
typedef TYPE_1__ Bridge ;


 int IN_SET (scalar_t__,int,int) ;
 int LOG_ERR ;
 int assert (void*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int safe_atou8 (char const*,scalar_t__*) ;

int config_parse_bridge_igmp_version(
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

        Bridge *b = userdata;
        uint8_t u;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                b->igmp_version = 0;
                return 0;
        }

        r = safe_atou8(rvalue, &u);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Failed to parse bridge's multicast IGMP version number '%s', ignoring assignment: %m",
                           rvalue);
                return 0;
        }
        if (!IN_SET(u, 2, 3)) {
                log_syntax(unit, LOG_ERR, filename, line, 0,
                           "Invalid bridge's multicast IGMP version number '%s', ignoring assignment.", rvalue);
                return 0;
        }

        b->igmp_version = u;

        return 0;
}
