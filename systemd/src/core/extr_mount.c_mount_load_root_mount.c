
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int perpetual; int default_dependencies; scalar_t__ description; } ;
typedef TYPE_2__ Unit ;
struct TYPE_8__ {int std_input; int std_output; } ;
struct TYPE_10__ {TYPE_1__ exec_context; } ;


 int EXEC_INPUT_NULL ;
 int EXEC_OUTPUT_NULL ;
 TYPE_6__* MOUNT (TYPE_2__*) ;
 int SPECIAL_ROOT_MOUNT ;
 int assert (TYPE_2__*) ;
 scalar_t__ strdup (char*) ;
 int unit_has_name (TYPE_2__*,int ) ;

__attribute__((used)) static void mount_load_root_mount(Unit *u) {
        assert(u);

        if (!unit_has_name(u, SPECIAL_ROOT_MOUNT))
                return;

        u->perpetual = 1;
        u->default_dependencies = 0;


        MOUNT(u)->exec_context.std_output = EXEC_OUTPUT_NULL;
        MOUNT(u)->exec_context.std_input = EXEC_INPUT_NULL;

        if (!u->description)
                u->description = strdup("Root Mount");
}
