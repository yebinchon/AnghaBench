
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {scalar_t__ pid; scalar_t__ code; int status; int exit_timestamp; } ;
struct TYPE_5__ {TYPE_1__ main_exec_status; } ;
typedef TYPE_2__ Service ;


 scalar_t__ CLD_EXITED ;
 int EBADE ;
 int ENODATA ;
 TYPE_2__* SERVICE (int *) ;
 int assert (int *) ;
 int dual_timestamp_is_set (int *) ;

__attribute__((used)) static int service_exit_status(Unit *u) {
        Service *s = SERVICE(u);

        assert(u);

        if (s->main_exec_status.pid <= 0 ||
            !dual_timestamp_is_set(&s->main_exec_status.exit_timestamp))
                return -ENODATA;

        if (s->main_exec_status.code != CLD_EXITED)
                return -EBADE;

        return s->main_exec_status.status;
}
