
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {float f_val; int b_fast_seek; } ;
struct TYPE_5__ {TYPE_1__ pos; } ;
typedef TYPE_2__ input_control_param_t ;


 int INPUT_CONTROL_SET_POSITION ;
 int input_ControlPush (int *,int ,TYPE_2__*) ;

void input_SetPosition( input_thread_t *p_input, float f_position, bool b_fast )
{
    input_control_param_t param;

    param.pos.f_val = f_position;
    param.pos.b_fast_seek = b_fast;
    input_ControlPush( p_input, INPUT_CONTROL_SET_POSITION, &param );
}
