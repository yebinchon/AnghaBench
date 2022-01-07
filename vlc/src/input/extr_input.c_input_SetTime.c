
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_4__ {int b_fast_seek; int i_val; } ;
struct TYPE_5__ {TYPE_1__ time; } ;
typedef TYPE_2__ input_control_param_t ;


 int INPUT_CONTROL_SET_TIME ;
 int input_ControlPush (int *,int ,TYPE_2__*) ;

void input_SetTime( input_thread_t *p_input, vlc_tick_t i_time, bool b_fast )
{
    input_control_param_t param;

    param.time.i_val = i_time;
    param.time.b_fast_seek = b_fast;
    input_ControlPush( p_input, INPUT_CONTROL_SET_TIME, &param );
}
