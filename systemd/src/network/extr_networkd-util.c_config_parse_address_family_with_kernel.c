
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ AddressFamily ;


 scalar_t__ ADDRESS_FAMILY_NO ;
 int LOG_ERR ;
 scalar_t__ address_family_from_string (char const*) ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_address_family_with_kernel(
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

        AddressFamily *fwd = data, s;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);
        s = address_family_from_string(rvalue);
        if (s < 0) {
                if (streq(rvalue, "kernel"))
                        s = ADDRESS_FAMILY_NO;
                else {
                        log_syntax(unit, LOG_ERR, filename, line, 0, "Failed to parse IPForward= option, ignoring: %s", rvalue);
                        return 0;
                }
        }

        *fwd = s;

        return 0;
}
