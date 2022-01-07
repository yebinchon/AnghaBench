
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Swap ;


 int EPERM ;
 TYPE_1__* SWAP (int *) ;







 int SWAP_SUCCESS ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int detect_container () ;
 int swap_enter_deactivating (TYPE_1__*) ;
 int swap_enter_signal (TYPE_1__*,int const,int ) ;

__attribute__((used)) static int swap_stop(Unit *u) {
        Swap *s = SWAP(u);

        assert(s);

        switch (s->state) {

        case 130:
        case 128:
        case 129:

                return 0;

        case 134:
        case 133:

                swap_enter_signal(s, 128, SWAP_SUCCESS);
                return 0;

        case 132:
                if (detect_container() > 0)
                        return -EPERM;

                swap_enter_deactivating(s);
                return 1;

        case 131:

                swap_enter_signal(s, 129, SWAP_SUCCESS);
                return 0;

        default:
                assert_not_reached("Unexpected state.");
        }
}
