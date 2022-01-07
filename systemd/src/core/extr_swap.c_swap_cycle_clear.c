
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int reset_accounting; } ;
struct TYPE_6__ {int exec_command; int result; } ;
typedef TYPE_1__ Swap ;


 int SWAP_SUCCESS ;
 TYPE_4__* UNIT (TYPE_1__*) ;
 int _SWAP_EXEC_COMMAND_MAX ;
 int assert (TYPE_1__*) ;
 int exec_command_reset_status_array (int ,int ) ;

__attribute__((used)) static void swap_cycle_clear(Swap *s) {
        assert(s);

        s->result = SWAP_SUCCESS;
        exec_command_reset_status_array(s->exec_command, _SWAP_EXEC_COMMAND_MAX);
        UNIT(s)->reset_accounting = 1;
}
