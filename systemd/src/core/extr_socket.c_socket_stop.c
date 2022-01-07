
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_1__ Socket ;


 int EAGAIN ;
 TYPE_1__* IN_SET (scalar_t__,int ,int ,...) ;
 TYPE_1__* SOCKET (int *) ;
 scalar_t__ SOCKET_CLEANING ;
 int SOCKET_FINAL_SIGKILL ;
 int SOCKET_FINAL_SIGTERM ;
 int SOCKET_LISTENING ;
 int SOCKET_RUNNING ;
 int SOCKET_START_CHOWN ;
 int SOCKET_START_POST ;
 int SOCKET_START_PRE ;
 int SOCKET_STOP_POST ;
 int SOCKET_STOP_PRE ;
 int SOCKET_STOP_PRE_SIGKILL ;
 int SOCKET_STOP_PRE_SIGTERM ;
 int SOCKET_SUCCESS ;
 int assert (TYPE_1__*) ;
 int socket_enter_signal (TYPE_1__*,int ,int ) ;
 int socket_enter_stop_pre (TYPE_1__*,int ) ;

__attribute__((used)) static int socket_stop(Unit *u) {
        Socket *s = SOCKET(u);

        assert(s);


        if (IN_SET(s->state,
                   SOCKET_STOP_PRE,
                   SOCKET_STOP_PRE_SIGTERM,
                   SOCKET_STOP_PRE_SIGKILL,
                   SOCKET_STOP_POST,
                   SOCKET_FINAL_SIGTERM,
                   SOCKET_FINAL_SIGKILL))
                return 0;



        if (IN_SET(s->state,
                   SOCKET_START_PRE,
                   SOCKET_START_CHOWN,
                   SOCKET_START_POST)) {
                socket_enter_signal(s, SOCKET_STOP_PRE_SIGTERM, SOCKET_SUCCESS);
                return -EAGAIN;
        }


        if (s->state == SOCKET_CLEANING) {
                socket_enter_signal(s, SOCKET_FINAL_SIGKILL, SOCKET_SUCCESS);
                return 0;
        }

        assert(IN_SET(s->state, SOCKET_LISTENING, SOCKET_RUNNING));

        socket_enter_stop_pre(s, SOCKET_SUCCESS);
        return 1;
}
