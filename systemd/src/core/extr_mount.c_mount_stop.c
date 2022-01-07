
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {int state; } ;
typedef TYPE_1__ Mount ;


 TYPE_1__* MOUNT (int *) ;







 int MOUNT_SUCCESS ;



 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int mount_enter_signal (TYPE_1__*,int const,int ) ;
 int mount_enter_unmounting (TYPE_1__*) ;
 int mount_set_state (TYPE_1__*,int const) ;

__attribute__((used)) static int mount_stop(Unit *u) {
        Mount *m = MOUNT(u);

        assert(m);

        switch (m->state) {

        case 130:
        case 129:
        case 128:

                return 0;

        case 135:
        case 134:
        case 133:

                mount_enter_signal(m, 128, MOUNT_SUCCESS);
                return 0;

        case 131:

                mount_set_state(m, 128);
                return 0;

        case 132:

                mount_set_state(m, 129);
                return 0;

        case 136:
                mount_enter_unmounting(m);
                return 1;

        case 137:

                mount_enter_signal(m, 129, MOUNT_SUCCESS);
                return 0;

        default:
                assert_not_reached("Unexpected state.");
        }
}
