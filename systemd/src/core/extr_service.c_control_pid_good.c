
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ control_pid; } ;
typedef TYPE_1__ Service ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static int control_pid_good(Service *s) {
        assert(s);





        return s->control_pid > 0;
}
