
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_11__ {int interval; unsigned int burst; } ;
struct TYPE_12__ {int exec_context; int service; TYPE_1__ trigger_limit; scalar_t__ accept; } ;
typedef TYPE_2__ Socket ;


 int * UNIT (TYPE_2__*) ;
 int UNIT_BEFORE ;
 int UNIT_DEPENDENCY_IMPLICIT ;
 int UNIT_DEREF (int ) ;
 int UNIT_TRIGGERS ;
 int USEC_INFINITY ;
 int USEC_PER_SEC ;
 int assert (TYPE_2__*) ;
 scalar_t__ have_non_accept_socket (TYPE_2__*) ;
 int socket_add_default_dependencies (TYPE_2__*) ;
 int socket_add_device_dependencies (TYPE_2__*) ;
 int socket_add_mount_dependencies (TYPE_2__*) ;
 scalar_t__ socket_has_exec (TYPE_2__*) ;
 int unit_add_exec_dependencies (int *,int *) ;
 int unit_add_two_dependencies (int *,int ,int ,int ,int,int ) ;
 int unit_load_related_unit (int *,char*,int **) ;
 int unit_patch_contexts (int *) ;
 int unit_ref_set (int *,int *,int *) ;
 int unit_set_default_slice (int *) ;

__attribute__((used)) static int socket_add_extras(Socket *s) {
        Unit *u = UNIT(s);
        int r;

        assert(s);
        if (s->trigger_limit.interval == USEC_INFINITY)
                s->trigger_limit.interval = 2 * USEC_PER_SEC;

        if (s->trigger_limit.burst == (unsigned) -1) {
                if (s->accept)
                        s->trigger_limit.burst = 200;
                else
                        s->trigger_limit.burst = 20;
        }

        if (have_non_accept_socket(s)) {

                if (!UNIT_DEREF(s->service)) {
                        Unit *x;

                        r = unit_load_related_unit(u, ".service", &x);
                        if (r < 0)
                                return r;

                        unit_ref_set(&s->service, u, x);
                }

                r = unit_add_two_dependencies(u, UNIT_BEFORE, UNIT_TRIGGERS, UNIT_DEREF(s->service), 1, UNIT_DEPENDENCY_IMPLICIT);
                if (r < 0)
                        return r;
        }

        r = socket_add_mount_dependencies(s);
        if (r < 0)
                return r;

        r = socket_add_device_dependencies(s);
        if (r < 0)
                return r;

        r = unit_patch_contexts(u);
        if (r < 0)
                return r;

        if (socket_has_exec(s)) {
                r = unit_add_exec_dependencies(u, &s->exec_context);
                if (r < 0)
                        return r;
        }

        r = unit_set_default_slice(u);
        if (r < 0)
                return r;

        r = socket_add_default_dependencies(s);
        if (r < 0)
                return r;

        return 0;
}
