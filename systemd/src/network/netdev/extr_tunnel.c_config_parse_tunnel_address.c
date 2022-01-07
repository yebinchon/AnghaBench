
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_2__ {int family; int remote; int local; } ;
typedef TYPE_1__ Tunnel ;


 int AF_UNSPEC ;
 union in_addr_union IN_ADDR_NULL ;
 int LOG_ERR ;
 int assert (void*) ;
 int in_addr_from_string_auto (char const*,int*,union in_addr_union*) ;
 scalar_t__ in_addr_is_null (int,int *) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_tunnel_address(const char *unit,
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
        union in_addr_union *addr = data, buffer;
        int r, f;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);







        if (streq(rvalue, "any")) {
                *addr = IN_ADDR_NULL;




                if (t->family != AF_UNSPEC &&
                    in_addr_is_null(t->family, &t->local) != 0 &&
                    in_addr_is_null(t->family, &t->remote) != 0)
                        t->family = AF_UNSPEC;
                return 0;
        }

        r = in_addr_from_string_auto(rvalue, &f, &buffer);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Tunnel address \"%s\" invalid, ignoring assignment: %m", rvalue);
                return 0;
        }

        if (t->family != AF_UNSPEC && t->family != f) {
                log_syntax(unit, LOG_ERR, filename, line, 0,
                           "Tunnel addresses incompatible, ignoring assignment: %s", rvalue);
                return 0;
        }

        t->family = f;
        *addr = buffer;
        return 0;
}
