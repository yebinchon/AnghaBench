
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* cgroup_path; } ;
typedef TYPE_1__ Unit ;


 int LOG_LEVEL_CGROUP_WRITE (int) ;
 int NEWLINE ;
 int cg_set_attribute (char const*,char*,char const*,char const*) ;
 scalar_t__ isempty (char*) ;
 int log_unit_full (TYPE_1__*,int ,int,char*,int ,char*,int,char const*) ;
 scalar_t__ strcspn (char const*,int ) ;
 int strna (char const*) ;

__attribute__((used)) static int set_attribute_and_warn(Unit *u, const char *controller, const char *attribute, const char *value) {
        int r;

        r = cg_set_attribute(controller, u->cgroup_path, attribute, value);
        if (r < 0)
                log_unit_full(u, LOG_LEVEL_CGROUP_WRITE(r), r, "Failed to set '%s' attribute on '%s' to '%.*s': %m",
                              strna(attribute), isempty(u->cgroup_path) ? "/" : u->cgroup_path, (int) strcspn(value, NEWLINE), value);

        return r;
}
