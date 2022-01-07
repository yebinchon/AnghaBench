
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_7__ {struct TYPE_7__* command_prev; } ;
struct TYPE_6__ {TYPE_2__** exec_command; } ;
typedef size_t ServiceExecCommand ;
typedef TYPE_1__ Service ;
typedef TYPE_2__ ExecCommand ;


 TYPE_1__* SERVICE (int *) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static unsigned service_exec_command_index(Unit *u, ServiceExecCommand id, ExecCommand *current) {
        Service *s = SERVICE(u);
        unsigned idx = 0;
        ExecCommand *first, *c;

        assert(s);

        first = s->exec_command[id];


        for (c = current; c != first; c = c->command_prev)
                idx++;

        return idx;
}
