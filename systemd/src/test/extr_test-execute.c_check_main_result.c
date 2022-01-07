
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int id; } ;
typedef TYPE_1__ Unit ;
struct TYPE_14__ {int code; int status; } ;
struct TYPE_13__ {TYPE_6__ main_exec_status; } ;
typedef TYPE_2__ Service ;
typedef TYPE_1__ Manager ;


 TYPE_2__* SERVICE (TYPE_1__*) ;
 int abort () ;
 int assert_se (TYPE_1__*) ;
 scalar_t__ cld_dumped_to_killed (int) ;
 int exec_status_dump (TYPE_6__*,int ,char*) ;
 int log_error (char*,char const*,int ,int,int) ;
 int stdout ;
 int wait_for_service_finish (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void check_main_result(const char *func, Manager *m, Unit *unit, int status_expected, int code_expected) {
        Service *service = ((void*)0);

        assert_se(m);
        assert_se(unit);

        wait_for_service_finish(m, unit);

        service = SERVICE(unit);
        exec_status_dump(&service->main_exec_status, stdout, "\t");

        if (cld_dumped_to_killed(service->main_exec_status.code) != cld_dumped_to_killed(code_expected)) {
                log_error("%s: %s: exit code %d, expected %d",
                          func, unit->id,
                          service->main_exec_status.code, code_expected);
                abort();
        }

        if (service->main_exec_status.status != status_expected) {
                log_error("%s: %s: exit status %d, expected %d",
                          func, unit->id,
                          service->main_exec_status.status, status_expected);
                abort();
        }
}
