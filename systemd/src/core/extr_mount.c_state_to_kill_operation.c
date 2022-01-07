
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MountState ;


 int KILL_KILL ;
 int KILL_RESTART ;
 int KILL_TERMINATE ;




 int _KILL_OPERATION_INVALID ;

__attribute__((used)) static int state_to_kill_operation(MountState state) {
        switch (state) {

        case 130:
                return KILL_RESTART;

        case 128:
                return KILL_TERMINATE;

        case 131:
        case 129:
                return KILL_KILL;

        default:
                return _KILL_OPERATION_INVALID;
        }
}
