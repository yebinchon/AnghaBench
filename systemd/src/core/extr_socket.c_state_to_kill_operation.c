
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SocketState ;
typedef int Socket ;


 int JOB_RESTART ;
 int KILL_KILL ;
 int KILL_RESTART ;
 int KILL_TERMINATE ;
 scalar_t__ SOCKET_FINAL_SIGTERM ;
 scalar_t__ SOCKET_STOP_PRE_SIGTERM ;
 int UNIT (int *) ;
 scalar_t__ unit_has_job_type (int ,int ) ;

__attribute__((used)) static int state_to_kill_operation(Socket *s, SocketState state) {
        if (state == SOCKET_STOP_PRE_SIGTERM && unit_has_job_type(UNIT(s), JOB_RESTART))
                return KILL_RESTART;

        if (state == SOCKET_FINAL_SIGTERM)
                return KILL_TERMINATE;

        return KILL_KILL;
}
