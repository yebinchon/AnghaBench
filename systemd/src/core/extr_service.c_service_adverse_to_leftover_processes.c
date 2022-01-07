
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int send_sigkill; int kill_mode; } ;
struct TYPE_7__ {TYPE_1__ kill_context; } ;
typedef TYPE_2__ Service ;


 int EBUSY ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int KILL_CONTROL_GROUP ;
 int KILL_MIXED ;
 int SYNTHETIC_ERRNO (int ) ;
 int UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int log_unit_error_errno (int ,int ,char*) ;
 scalar_t__ unit_warn_leftover_processes (int ) ;

__attribute__((used)) static int service_adverse_to_leftover_processes(Service *s) {
        assert(s);
        if (unit_warn_leftover_processes(UNIT(s)) &&
            IN_SET(s->kill_context.kill_mode, KILL_MIXED, KILL_CONTROL_GROUP) &&
            !s->kill_context.send_sigkill)
               return log_unit_error_errno(UNIT(s), SYNTHETIC_ERRNO(EBUSY),
                                           "Will not start SendSIGKILL=no service of type KillMode=control-group or mixed while processes exist");

        return 0;
}
