
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IPPROTO_MAX ;
 int LOG_ERR ;
 int UINT8_MAX ;
 int assert (void*) ;
 int assert_cc (int) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_ip_protocol (char const*) ;
 int safe_atou8 (char const*,int*) ;

int config_parse_ip_protocol(
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

        uint8_t *protocol = data;
        int r;

        assert(filename);
        assert(section);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        assert_cc(IPPROTO_MAX-1 <= UINT8_MAX);

        r = parse_ip_protocol(rvalue);
        if (r < 0) {
                r = safe_atou8(rvalue, protocol);
                if (r < 0)
                        log_syntax(unit, LOG_ERR, filename, line, r,
                                   "Failed to parse IP protocol '%s' for Foo over UDP tunnel, "
                                   "ignoring assignment: %m", rvalue);
                return 0;
        }

        *protocol = r;
        return 0;
}
