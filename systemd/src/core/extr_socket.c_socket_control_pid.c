
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int control_pid; } ;
typedef TYPE_1__ Socket ;


 TYPE_1__* SOCKET (int *) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static int socket_control_pid(Unit *u) {
        Socket *s = SOCKET(u);

        assert(s);

        return s->control_pid;
}
