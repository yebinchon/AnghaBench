
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ CAP_ALL ;
 int LOG_ERR ;
 int assert (void*) ;
 int capability_set_from_string (char const*,scalar_t__*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_capability_set(
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

        uint64_t *capability_set = data;
        uint64_t sum = 0, initial = 0;
        bool invert = 0;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (rvalue[0] == '~') {
                invert = 1;
                rvalue++;
        }

        if (streq(lvalue, "CapabilityBoundingSet"))
                initial = CAP_ALL;


        r = capability_set_from_string(rvalue, &sum);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse %s= specifier '%s', ignoring: %m", lvalue, rvalue);
                return 0;
        }

        if (sum == 0 || *capability_set == initial)

                *capability_set = invert ? ~sum : sum;
        else {

                if (invert)
                        *capability_set &= ~sum;
                else
                        *capability_set |= sum;
        }

        return 0;
}
