
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int exec_context; } ;
typedef TYPE_1__ Service ;
typedef int ExecCleanMask ;


 TYPE_1__* SERVICE (int *) ;
 int assert (TYPE_1__*) ;
 int exec_context_get_clean_mask (int *,int *) ;

__attribute__((used)) static int service_can_clean(Unit *u, ExecCleanMask *ret) {
        Service *s = SERVICE(u);

        assert(s);

        return exec_context_get_clean_mask(&s->exec_context, ret);
}
