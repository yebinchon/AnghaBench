
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; int dynamic_creds; int exec_context; int exec_runtime; } ;
typedef scalar_t__ SocketResult ;
typedef TYPE_1__ Socket ;


 int SOCKET_DEAD ;
 int SOCKET_FAILED ;
 scalar_t__ SOCKET_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int dynamic_creds_destroy (int *) ;
 int exec_runtime_unref (int ,int) ;
 int socket_result_to_string (scalar_t__) ;
 int socket_set_state (TYPE_1__*,int ) ;
 int unit_destroy_runtime_directory (int ,int *) ;
 int unit_log_failure (int ,int ) ;
 int unit_log_success (int ) ;
 int unit_unref_uid_gid (int ,int) ;

__attribute__((used)) static void socket_enter_dead(Socket *s, SocketResult f) {
        assert(s);

        if (s->result == SOCKET_SUCCESS)
                s->result = f;

        if (s->result == SOCKET_SUCCESS)
                unit_log_success(UNIT(s));
        else
                unit_log_failure(UNIT(s), socket_result_to_string(s->result));

        socket_set_state(s, s->result != SOCKET_SUCCESS ? SOCKET_FAILED : SOCKET_DEAD);

        s->exec_runtime = exec_runtime_unref(s->exec_runtime, 1);

        unit_destroy_runtime_directory(UNIT(s), &s->exec_context);

        unit_unref_uid_gid(UNIT(s), 1);

        dynamic_creds_destroy(&s->dynamic_creds);
}
