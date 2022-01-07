
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; } ;
typedef scalar_t__ AutomountResult ;
typedef TYPE_1__ Automount ;


 int AUTOMOUNT_DEAD ;
 int AUTOMOUNT_FAILED ;
 scalar_t__ AUTOMOUNT_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int automount_result_to_string (scalar_t__) ;
 int automount_set_state (TYPE_1__*,int ) ;
 int unit_log_result (int ,int,int ) ;

__attribute__((used)) static void automount_enter_dead(Automount *a, AutomountResult f) {
        assert(a);

        if (a->result == AUTOMOUNT_SUCCESS)
                a->result = f;

        unit_log_result(UNIT(a), a->result == AUTOMOUNT_SUCCESS, automount_result_to_string(a->result));
        automount_set_state(a, a->result != AUTOMOUNT_SUCCESS ? AUTOMOUNT_FAILED : AUTOMOUNT_DEAD);
}
