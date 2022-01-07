
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_10__ {scalar_t__ runtime_directory_preserve_mode; } ;
struct TYPE_8__ {int * prefix; } ;
typedef TYPE_3__ ExecContext ;


 size_t EXEC_DIRECTORY_RUNTIME ;
 scalar_t__ EXEC_PRESERVE_NO ;
 scalar_t__ EXEC_PRESERVE_RESTART ;
 int exec_context_destroy_runtime_directory (TYPE_3__ const*,int ) ;
 int unit_will_restart (TYPE_2__*) ;

void unit_destroy_runtime_directory(Unit *u, const ExecContext *context) {
        if (context->runtime_directory_preserve_mode == EXEC_PRESERVE_NO ||
            (context->runtime_directory_preserve_mode == EXEC_PRESERVE_RESTART && !unit_will_restart(u)))
                exec_context_destroy_runtime_directory(context, u->manager->prefix[EXEC_DIRECTORY_RUNTIME]);
}
