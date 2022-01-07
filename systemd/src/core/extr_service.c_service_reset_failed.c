
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; int flush_n_restarts; scalar_t__ n_restarts; void* clean_result; void* reload_result; void* result; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* SERVICE (int *) ;
 int SERVICE_DEAD ;
 scalar_t__ SERVICE_FAILED ;
 void* SERVICE_SUCCESS ;
 int assert (TYPE_1__*) ;
 int service_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void service_reset_failed(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);

        if (s->state == SERVICE_FAILED)
                service_set_state(s, SERVICE_DEAD);

        s->result = SERVICE_SUCCESS;
        s->reload_result = SERVICE_SUCCESS;
        s->clean_result = SERVICE_SUCCESS;
        s->n_restarts = 0;
        s->flush_n_restarts = 0;
}
