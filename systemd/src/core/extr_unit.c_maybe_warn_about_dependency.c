
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UnitDependency ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ Unit ;


 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int UNIT_AFTER ;
 int UNIT_BEFORE ;
 int UNIT_CONFLICTED_BY ;
 int UNIT_CONFLICTS ;
 int UNIT_ON_FAILURE ;
 int UNIT_TRIGGERED_BY ;
 int UNIT_TRIGGERS ;
 int assert (TYPE_1__*) ;
 int log_unit_warning (TYPE_1__*,char*,int ,int ,...) ;
 scalar_t__ streq_ptr (int ,char const*) ;
 int strna (char const*) ;
 int unit_dependency_to_string (int ) ;

__attribute__((used)) static void maybe_warn_about_dependency(Unit *u, const char *other, UnitDependency dependency) {
        assert(u);


        if (!IN_SET(dependency, UNIT_CONFLICTS, UNIT_CONFLICTED_BY, UNIT_BEFORE, UNIT_AFTER, UNIT_ON_FAILURE, UNIT_TRIGGERS, UNIT_TRIGGERED_BY))
                return;

        if (streq_ptr(u->id, other))
                log_unit_warning(u, "Dependency %s=%s dropped", unit_dependency_to_string(dependency), u->id);
        else
                log_unit_warning(u, "Dependency %s=%s dropped, merged into %s", unit_dependency_to_string(dependency), strna(other), u->id);
}
