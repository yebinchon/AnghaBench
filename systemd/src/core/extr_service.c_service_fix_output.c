
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* manager; } ;
struct TYPE_9__ {scalar_t__ std_error; scalar_t__ std_output; scalar_t__ std_input; scalar_t__ stdin_data_size; } ;
struct TYPE_10__ {TYPE_2__ exec_context; } ;
struct TYPE_8__ {scalar_t__ default_std_error; scalar_t__ default_std_output; } ;
typedef TYPE_3__ Service ;


 scalar_t__ EXEC_INPUT_DATA ;
 scalar_t__ EXEC_INPUT_NULL ;
 scalar_t__ EXEC_OUTPUT_INHERIT ;
 TYPE_6__* UNIT (TYPE_3__*) ;
 int assert (TYPE_3__*) ;

__attribute__((used)) static void service_fix_output(Service *s) {
        assert(s);




        if (s->exec_context.std_error == EXEC_OUTPUT_INHERIT &&
            s->exec_context.std_output == EXEC_OUTPUT_INHERIT &&
            s->exec_context.std_input == EXEC_INPUT_NULL)
                s->exec_context.std_error = UNIT(s)->manager->default_std_error;

        if (s->exec_context.std_output == EXEC_OUTPUT_INHERIT &&
            s->exec_context.std_input == EXEC_INPUT_NULL)
                s->exec_context.std_output = UNIT(s)->manager->default_std_output;

        if (s->exec_context.std_input == EXEC_INPUT_NULL &&
            s->exec_context.stdin_data_size > 0)
                s->exec_context.std_input = EXEC_INPUT_DATA;
}
