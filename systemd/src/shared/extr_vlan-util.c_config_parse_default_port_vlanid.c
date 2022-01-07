
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int assert (void*) ;
 int config_parse_vlanid (char const*,char const*,unsigned int,char const*,unsigned int,char const*,int,char const*,void*,void*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_default_port_vlanid(
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
        uint16_t *id = data;

        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (streq(rvalue, "none")) {
                *id = 0;
                return 0;
        }

        return config_parse_vlanid(unit, filename, line, section, section_line,
                                   lvalue, ltype, rvalue, data, userdata);
}
