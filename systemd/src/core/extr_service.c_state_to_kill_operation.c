
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ServiceState ;
typedef int Service ;


 int JOB_RESTART ;
 int KILL_KILL ;
 int KILL_RESTART ;
 int KILL_TERMINATE ;
 int KILL_WATCHDOG ;





 int UNIT (int *) ;
 int _KILL_OPERATION_INVALID ;
 int _fallthrough_ ;
 int unit_has_job_type (int ,int ) ;

__attribute__((used)) static int state_to_kill_operation(Service *s, ServiceState state) {
        switch (state) {

        case 128:
                return KILL_WATCHDOG;

        case 129:
                if (unit_has_job_type(UNIT(s), JOB_RESTART))
                        return KILL_RESTART;
                _fallthrough_;

        case 131:
                return KILL_TERMINATE;

        case 130:
        case 132:
                return KILL_KILL;

        default:
                return _KILL_OPERATION_INVALID;
        }
}
