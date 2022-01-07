
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disable_controllers; } ;
typedef int CGroupMask ;
typedef TYPE_1__ CGroupContext ;


 int LOG_ERR ;
 int cg_mask_from_string (char const*,int *) ;
 scalar_t__ isempty (char const*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;

int config_parse_disable_controllers(
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

        int r;
        CGroupContext *c = data;
        CGroupMask disabled_mask;




        if (isempty(rvalue)) {
                c->disable_controllers = 0;
                return 0;
        }

        r = cg_mask_from_string(rvalue, &disabled_mask);
        if (r < 0 || disabled_mask <= 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Invalid cgroup string: %s, ignoring", rvalue);
                return 0;
        }

        c->disable_controllers |= disabled_mask;

        return 0;
}
