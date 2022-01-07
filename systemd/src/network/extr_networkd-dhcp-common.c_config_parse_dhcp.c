
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ AddressFamily ;


 scalar_t__ ADDRESS_FAMILY_IPV4 ;
 scalar_t__ ADDRESS_FAMILY_IPV6 ;
 scalar_t__ ADDRESS_FAMILY_NO ;
 scalar_t__ ADDRESS_FAMILY_YES ;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ address_family_from_string (char const*) ;
 int address_family_to_string (scalar_t__) ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int ,char*,char const*,...) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_dhcp(
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

        AddressFamily *dhcp = data, s;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);





        s = address_family_from_string(rvalue);
        if (s < 0) {




                if (streq(rvalue, "none"))
                        s = ADDRESS_FAMILY_NO;
                else if (streq(rvalue, "v4"))
                        s = ADDRESS_FAMILY_IPV4;
                else if (streq(rvalue, "v6"))
                        s = ADDRESS_FAMILY_IPV6;
                else if (streq(rvalue, "both"))
                        s = ADDRESS_FAMILY_YES;
                else {
                        log_syntax(unit, LOG_ERR, filename, line, 0,
                                   "Failed to parse DHCP option, ignoring: %s", rvalue);
                        return 0;
                }

                log_syntax(unit, LOG_WARNING, filename, line, 0,
                           "DHCP=%s is deprecated, please use DHCP=%s instead.",
                           rvalue, address_family_to_string(s));
        }

        *dhcp = s;
        return 0;
}
