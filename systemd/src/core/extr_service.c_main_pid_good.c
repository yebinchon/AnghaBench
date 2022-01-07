
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ main_pid; scalar_t__ main_pid_alien; scalar_t__ main_pid_known; } ;
typedef TYPE_1__ Service ;


 int EAGAIN ;
 int assert (TYPE_1__*) ;
 int pid_is_alive (scalar_t__) ;

__attribute__((used)) static int main_pid_good(Service *s) {
        assert(s);





        if (s->main_pid_known) {



                if (s->main_pid_alien && s->main_pid > 0)
                        return pid_is_alive(s->main_pid);




                return s->main_pid > 0;
        }


        return -EAGAIN;
}
