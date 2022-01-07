
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; int pid_file; } ;
typedef TYPE_1__ Service ;


 int IN_SET (int ,int ,int ) ;
 int SERVICE_START ;
 int SERVICE_START_POST ;
 int SERVICE_SUCCESS ;
 int assert (int ) ;
 int service_enter_running (TYPE_1__*,int ) ;
 int service_load_pid_file (TYPE_1__*,int) ;
 int service_unwatch_pid_file (TYPE_1__*) ;

__attribute__((used)) static int service_retry_pid_file(Service *s) {
        int r;

        assert(s->pid_file);
        assert(IN_SET(s->state, SERVICE_START, SERVICE_START_POST));

        r = service_load_pid_file(s, 0);
        if (r < 0)
                return r;

        service_unwatch_pid_file(s);

        service_enter_running(s, SERVICE_SUCCESS);
        return 0;
}
