
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {scalar_t__ type; } ;
typedef TYPE_1__ Unit ;
struct TYPE_17__ {int ** exec_command; } ;
struct TYPE_16__ {int ** exec_command; int * control_command; } ;
struct TYPE_15__ {int * control_command; } ;
struct TYPE_13__ {int * control_command; } ;
typedef int ExecCommand ;


 unsigned int ELEMENTSOF (int **) ;
 TYPE_11__* MOUNT (TYPE_1__*) ;
 TYPE_9__* SERVICE (TYPE_1__*) ;
 TYPE_7__* SOCKET (TYPE_1__*) ;
 TYPE_5__* SWAP (TYPE_1__*) ;
 scalar_t__ UNIT_MOUNT ;
 scalar_t__ UNIT_SERVICE ;
 scalar_t__ UNIT_SOCKET ;
 scalar_t__ UNIT_SWAP ;
 int assert (TYPE_1__*) ;
 int verify_executable (TYPE_1__*,int *) ;

__attribute__((used)) static int verify_executables(Unit *u) {
        ExecCommand *exec;
        int r = 0, k;
        unsigned i;

        assert(u);

        exec = u->type == UNIT_SOCKET ? SOCKET(u)->control_command :
                u->type == UNIT_MOUNT ? MOUNT(u)->control_command :
                u->type == UNIT_SWAP ? SWAP(u)->control_command : ((void*)0);
        k = verify_executable(u, exec);
        if (k < 0 && r == 0)
                r = k;

        if (u->type == UNIT_SERVICE)
                for (i = 0; i < ELEMENTSOF(SERVICE(u)->exec_command); i++) {
                        k = verify_executable(u, SERVICE(u)->exec_command[i]);
                        if (k < 0 && r == 0)
                                r = k;
                }

        if (u->type == UNIT_SOCKET)
                for (i = 0; i < ELEMENTSOF(SOCKET(u)->exec_command); i++) {
                        k = verify_executable(u, SOCKET(u)->exec_command[i]);
                        if (k < 0 && r == 0)
                                r = k;
                }

        return r;
}
