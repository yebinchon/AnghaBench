
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union in_addr_union {int in6; } ;
typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ sixrd_prefixlen; int sixrd_prefix; } ;
typedef TYPE_1__ Tunnel ;


 int AF_INET6 ;
 int LOG_ERR ;
 int assert (char const*) ;
 int in_addr_prefix_from_string (char const*,int ,union in_addr_union*,scalar_t__*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;

int config_parse_6rd_prefix(const char* unit,
                            const char *filename,
                            unsigned line,
                            const char *section,
                            unsigned section_line,
                            const char *lvalue,
                            int ltype,
                            const char *rvalue,
                            void *data,
                            void *userdata) {
        Tunnel *t = userdata;

        assert(filename);
        assert(lvalue);
        assert(rvalue);

        union in_addr_union p;
        uint8_t l;
        int r;

        r = in_addr_prefix_from_string(rvalue, AF_INET6, &p, &l);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse 6rd prefix \"%s\", ignoring: %m", rvalue);
                return 0;
        }
        if (l == 0) {
                log_syntax(unit, LOG_ERR, filename, line, 0, "6rd prefix length of \"%s\" must be greater than zero, ignoring", rvalue);
                return 0;
        }

        t->sixrd_prefix = p.in6;
        t->sixrd_prefixlen = l;

        return 0;
}
