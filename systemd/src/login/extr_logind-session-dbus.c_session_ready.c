
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* user; int scope_job; } ;
struct TYPE_5__ {int service_job; } ;
typedef TYPE_2__ Session ;


 int assert (TYPE_2__*) ;

__attribute__((used)) static bool session_ready(Session *s) {
        assert(s);



        return !s->scope_job &&
                !s->user->service_job;
}
