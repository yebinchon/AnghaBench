
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * exec; int * conditions; int listen; int triggers; int triggered_by; int dropin_paths; int documentation; } ;
typedef TYPE_1__ UnitStatusInfo ;
typedef int UnitCondition ;
typedef int ExecStatusInfo ;


 int LIST_REMOVE (int ,int *,int *) ;
 int conditions ;
 int exec ;
 int exec_status_info_free (int *) ;
 int strv_free (int ) ;
 int unit_condition_free (int *) ;

__attribute__((used)) static void unit_status_info_free(UnitStatusInfo *info) {
        ExecStatusInfo *p;
        UnitCondition *c;

        strv_free(info->documentation);
        strv_free(info->dropin_paths);
        strv_free(info->triggered_by);
        strv_free(info->triggers);
        strv_free(info->listen);

        while ((c = info->conditions)) {
                LIST_REMOVE(conditions, info->conditions, c);
                unit_condition_free(c);
        }

        while ((p = info->exec)) {
                LIST_REMOVE(exec, info->exec, p);
                exec_status_info_free(p);
        }
}
