
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LLDPEmit ;


 int LLDP_EMIT_CUSTOMER_BRIDGE ;
 int LLDP_EMIT_NEAREST_BRIDGE ;
 int LLDP_EMIT_NO ;
 int LLDP_EMIT_NON_TPMR_BRIDGE ;
 int LOG_ERR ;
 int assert (char const*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 int parse_boolean (char const*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_lldp_emit(
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

        LLDPEmit *emit = data;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        if (isempty(rvalue))
                *emit = LLDP_EMIT_NO;
        else if (streq(rvalue, "nearest-bridge"))
                *emit = LLDP_EMIT_NEAREST_BRIDGE;
        else if (streq(rvalue, "non-tpmr-bridge"))
                *emit = LLDP_EMIT_NON_TPMR_BRIDGE;
        else if (streq(rvalue, "customer-bridge"))
                *emit = LLDP_EMIT_CUSTOMER_BRIDGE;
        else {
                r = parse_boolean(rvalue);
                if (r < 0) {
                        log_syntax(unit, LOG_ERR, filename, line, 0, "Failed to parse LLDP emission setting, ignoring: %s", rvalue);
                        return 0;
                }

                *emit = r ? LLDP_EMIT_NEAREST_BRIDGE : LLDP_EMIT_NO;
        }

        return 0;
}
