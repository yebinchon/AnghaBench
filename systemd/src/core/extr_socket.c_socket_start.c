
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_18__ {int reset_accounting; } ;
typedef TYPE_1__ Unit ;
struct TYPE_20__ {int state; } ;
struct TYPE_19__ {int exec_command; int result; int state; int service; } ;
struct TYPE_17__ {scalar_t__ load_state; int id; } ;
typedef TYPE_2__ Socket ;
typedef TYPE_3__ Service ;


 int EAGAIN ;
 int EBUSY ;
 int ENOENT ;
 TYPE_2__* IN_SET (int ,int ,int ,...) ;
 TYPE_3__* SERVICE (int ) ;
 int SERVICE_AUTO_RESTART ;
 int SERVICE_DEAD ;
 int SERVICE_FAILED ;
 TYPE_2__* SOCKET (TYPE_1__*) ;
 int SOCKET_CLEANING ;
 int SOCKET_DEAD ;
 int SOCKET_FAILED ;
 int SOCKET_FAILURE_START_LIMIT_HIT ;
 int SOCKET_FINAL_SIGKILL ;
 int SOCKET_FINAL_SIGTERM ;
 int SOCKET_START_CHOWN ;
 int SOCKET_START_POST ;
 int SOCKET_START_PRE ;
 int SOCKET_STOP_POST ;
 int SOCKET_STOP_PRE ;
 int SOCKET_STOP_PRE_SIGKILL ;
 int SOCKET_STOP_PRE_SIGTERM ;
 int SOCKET_SUCCESS ;
 TYPE_11__* UNIT (TYPE_3__*) ;
 int UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 scalar_t__ UNIT_LOADED ;
 int _SOCKET_EXEC_COMMAND_MAX ;
 int assert (TYPE_2__*) ;
 int exec_command_reset_status_list_array (int ,int ) ;
 int log_unit_error (TYPE_1__*,char*,int ) ;
 int socket_enter_dead (TYPE_2__*,int ) ;
 int socket_enter_start_pre (TYPE_2__*) ;
 int unit_acquire_invocation_id (TYPE_1__*) ;
 int unit_test_start_limit (TYPE_1__*) ;

__attribute__((used)) static int socket_start(Unit *u) {
        Socket *s = SOCKET(u);
        int r;

        assert(s);



        if (IN_SET(s->state,
                   SOCKET_STOP_PRE,
                   SOCKET_STOP_PRE_SIGKILL,
                   SOCKET_STOP_PRE_SIGTERM,
                   SOCKET_STOP_POST,
                   SOCKET_FINAL_SIGTERM,
                   SOCKET_FINAL_SIGKILL,
                   SOCKET_CLEANING))
                return -EAGAIN;


        if (IN_SET(s->state,
                   SOCKET_START_PRE,
                   SOCKET_START_CHOWN,
                   SOCKET_START_POST))
                return 0;


        if (UNIT_ISSET(s->service)) {
                Service *service;

                service = SERVICE(UNIT_DEREF(s->service));

                if (UNIT(service)->load_state != UNIT_LOADED) {
                        log_unit_error(u, "Socket service %s not loaded, refusing.", UNIT(service)->id);
                        return -ENOENT;
                }



                if (!IN_SET(service->state, SERVICE_DEAD, SERVICE_FAILED, SERVICE_AUTO_RESTART)) {
                        log_unit_error(u, "Socket service %s already active, refusing.", UNIT(service)->id);
                        return -EBUSY;
                }
        }

        assert(IN_SET(s->state, SOCKET_DEAD, SOCKET_FAILED));

        r = unit_test_start_limit(u);
        if (r < 0) {
                socket_enter_dead(s, SOCKET_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = unit_acquire_invocation_id(u);
        if (r < 0)
                return r;

        s->result = SOCKET_SUCCESS;
        exec_command_reset_status_list_array(s->exec_command, _SOCKET_EXEC_COMMAND_MAX);

        u->reset_accounting = 1;

        socket_enter_start_pre(s);
        return 1;
}
