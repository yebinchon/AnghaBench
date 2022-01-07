
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
typedef TYPE_1__ Unit ;
struct TYPE_12__ {scalar_t__ result; } ;
typedef scalar_t__ ServiceResult ;
typedef TYPE_2__ Service ;
typedef TYPE_1__ Manager ;


 TYPE_2__* SERVICE (TYPE_1__*) ;
 int abort () ;
 int assert_se (TYPE_1__*) ;
 int log_error (char*,char const*,int ,int ,int ) ;
 int service_result_to_string (scalar_t__) ;
 int wait_for_service_finish (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void check_service_result(const char *func, Manager *m, Unit *unit, ServiceResult result_expected) {
        Service *service = ((void*)0);

        assert_se(m);
        assert_se(unit);

        wait_for_service_finish(m, unit);

        service = SERVICE(unit);

        if (service->result != result_expected) {
                log_error("%s: %s: service end result %s, expected %s",
                          func, unit->id,
                          service_result_to_string(service->result),
                          service_result_to_string(result_expected));
                abort();
        }
}
