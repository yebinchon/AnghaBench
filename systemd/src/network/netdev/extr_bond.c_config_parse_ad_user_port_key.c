
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ad_user_port_key; } ;
typedef TYPE_1__ Bond ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int safe_atou16 (char const*,int*) ;

int config_parse_ad_user_port_key(
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
        Bond *b = userdata;
        uint16_t v;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = safe_atou16(rvalue, &v);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Failed to parse user port key '%s', ignoring: %m", rvalue);
                return 0;
        }

        if (v > 1023) {
                log_syntax(unit, LOG_ERR, filename, line, 0,
                           "Failed to parse user port key '%s'. Range is [0…1023], ignoring.", rvalue);
                return 0;
        }

        b->ad_user_port_key = v;

        return 0;
}
