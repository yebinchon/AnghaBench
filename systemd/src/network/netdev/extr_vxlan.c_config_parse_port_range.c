
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_3__ {void* high; void* low; } ;
struct TYPE_4__ {TYPE_1__ port_range; } ;
typedef TYPE_2__ VxLan ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_ip_port_range (char const*,void**,void**) ;

int config_parse_port_range(const char *unit,
                            const char *filename,
                            unsigned line,
                            const char *section,
                            unsigned section_line,
                            const char *lvalue,
                            int ltype,
                            const char *rvalue,
                            void *data,
                            void *userdata) {
        VxLan *v = userdata;
        uint16_t low, high;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = parse_ip_port_range(rvalue, &low, &high);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Failed to parse VXLAN port range '%s'. Port should be greater than 0 and less than 65535.", rvalue);
                return 0;
        }

        v->port_range.low = low;
        v->port_range.high = high;

        return 0;
}
