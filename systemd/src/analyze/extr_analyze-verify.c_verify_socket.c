
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; int id; } ;
typedef TYPE_1__ Unit ;
struct TYPE_13__ {scalar_t__ load_state; int id; } ;
struct TYPE_12__ {int service; } ;
typedef int Service ;


 int ENOENT ;
 int * SERVICE (int ) ;
 TYPE_3__* SOCKET (TYPE_1__*) ;
 TYPE_8__* UNIT (int *) ;
 int UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_SOCKET ;
 int assert (TYPE_1__*) ;
 int log_unit_debug (TYPE_1__*,char*,int ) ;
 int log_unit_error (TYPE_1__*,char*,int ,int ) ;
 int log_unit_error_errno (TYPE_1__*,int,char*) ;
 int socket_instantiate_service (TYPE_3__*) ;

__attribute__((used)) static int verify_socket(Unit *u) {
        int r;

        assert(u);

        if (u->type != UNIT_SOCKET)
                return 0;




        r = socket_instantiate_service(SOCKET(u));
        if (r < 0)
                return log_unit_error_errno(u, r, "Socket cannot be started, failed to create instance: %m");


        if (UNIT_ISSET(SOCKET(u)->service)) {
                Service *service;

                service = SERVICE(UNIT_DEREF(SOCKET(u)->service));
                log_unit_debug(u, "Using %s", UNIT(service)->id);

                if (UNIT(service)->load_state != UNIT_LOADED) {
                        log_unit_error(u, "Service %s not loaded, %s cannot be started.", UNIT(service)->id, u->id);
                        return -ENOENT;
                }
        }

        return 0;
}
