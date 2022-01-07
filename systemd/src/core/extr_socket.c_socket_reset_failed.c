
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; void* clean_result; void* result; } ;
typedef TYPE_1__ Socket ;


 TYPE_1__* SOCKET (int *) ;
 int SOCKET_DEAD ;
 scalar_t__ SOCKET_FAILED ;
 void* SOCKET_SUCCESS ;
 int assert (TYPE_1__*) ;
 int socket_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void socket_reset_failed(Unit *u) {
        Socket *s = SOCKET(u);

        assert(s);

        if (s->state == SOCKET_FAILED)
                socket_set_state(s, SOCKET_DEAD);

        s->result = SOCKET_SUCCESS;
        s->clean_result = SOCKET_SUCCESS;
}
