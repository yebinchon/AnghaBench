
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int safe_atou32 (char const*,scalar_t__*) ;

int config_parse_l2tp_tunnel_id(
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

        uint32_t *id = data, k;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = safe_atou32(rvalue, &k);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Failed to parse L2TP tunnel id. Ignoring assignment: %s", rvalue);
                return 0;
        }

        if (k == 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Invalid L2TP tunnel id. Ignoring assignment: %s", rvalue);
                return 0;
        }

        *id = k;

        return 0;
}
