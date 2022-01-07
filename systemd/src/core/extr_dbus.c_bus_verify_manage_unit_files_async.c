
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_3__ {int polkit_registry; } ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int UID_INVALID ;
 int bus_verify_polkit_async (int *,int ,char*,int *,int,int ,int *,int *) ;

int bus_verify_manage_unit_files_async(Manager *m, sd_bus_message *call, sd_bus_error *error) {
        return bus_verify_polkit_async(call, CAP_SYS_ADMIN, "org.freedesktop.systemd1.manage-unit-files", ((void*)0), 0, UID_INVALID, &m->polkit_registry, error);
}
