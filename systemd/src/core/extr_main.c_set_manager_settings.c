
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status_unit_format; int cad_burst_action; int kexec_watchdog; int reboot_watchdog; int runtime_watchdog; int service_watchdogs; int confirm_spawn; } ;
typedef TYPE_1__ Manager ;


 int arg_cad_burst_action ;
 int arg_confirm_spawn ;
 int arg_kexec_watchdog ;
 int arg_reboot_watchdog ;
 int arg_runtime_watchdog ;
 int arg_service_watchdogs ;
 int arg_show_status ;
 int arg_status_unit_format ;
 int assert (TYPE_1__*) ;
 int manager_set_show_status (TYPE_1__*,int ) ;

__attribute__((used)) static void set_manager_settings(Manager *m) {

        assert(m);




        m->confirm_spawn = arg_confirm_spawn;
        m->service_watchdogs = arg_service_watchdogs;
        m->runtime_watchdog = arg_runtime_watchdog;
        m->reboot_watchdog = arg_reboot_watchdog;
        m->kexec_watchdog = arg_kexec_watchdog;
        m->cad_burst_action = arg_cad_burst_action;

        manager_set_show_status(m, arg_show_status);
        m->status_unit_format = arg_status_unit_format;
}
