
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_2__ {int apparmor_profile_ignore; int apparmor_profile; } ;
typedef TYPE_1__ ExecContext ;


 int ENOEXEC ;
 int LOG_ERR ;
 int assert (void*) ;
 int free_and_replace (int ,char*) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*,char*) ;
 int mfree (int ) ;
 int unit_full_printf (int const*,char const*,char**) ;

int config_parse_exec_apparmor_profile(
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

        ExecContext *c = data;
        const Unit *u = userdata;
        bool ignore;
        char *k;
        int r;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                c->apparmor_profile = mfree(c->apparmor_profile);
                c->apparmor_profile_ignore = 0;
                return 0;
        }

        if (rvalue[0] == '-') {
                ignore = 1;
                rvalue++;
        } else
                ignore = 0;

        r = unit_full_printf(u, rvalue, &k);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r,
                           "Failed to resolve unit specifiers in '%s'%s: %m",
                           rvalue, ignore ? ", ignoring" : "");
                return ignore ? 0 : -ENOEXEC;
        }

        free_and_replace(c->apparmor_profile, k);
        c->apparmor_profile_ignore = ignore;

        return 0;
}
