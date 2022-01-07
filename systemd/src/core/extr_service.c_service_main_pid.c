
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int main_pid; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* SERVICE (int *) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static int service_main_pid(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);

        return s->main_pid;
}
