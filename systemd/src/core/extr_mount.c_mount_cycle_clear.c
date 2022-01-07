
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int reset_accounting; } ;
struct TYPE_6__ {int exec_command; void* reload_result; void* result; } ;
typedef TYPE_1__ Mount ;


 void* MOUNT_SUCCESS ;
 TYPE_4__* UNIT (TYPE_1__*) ;
 int _MOUNT_EXEC_COMMAND_MAX ;
 int assert (TYPE_1__*) ;
 int exec_command_reset_status_array (int ,int ) ;

__attribute__((used)) static void mount_cycle_clear(Mount *m) {
        assert(m);



        m->result = MOUNT_SUCCESS;
        m->reload_result = MOUNT_SUCCESS;
        exec_command_reset_status_array(m->exec_command, _MOUNT_EXEC_COMMAND_MAX);
        UNIT(m)->reset_accounting = 1;
}
