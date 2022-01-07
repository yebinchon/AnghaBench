
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_thread_t ;
typedef int input_control_param_t ;
struct TYPE_2__ {int is_running; } ;


 int Control (int *,int,int const) ;
 int assert (int) ;
 TYPE_1__* input_priv (int *) ;

void input_ControlSync(input_thread_t *p_input, int i_type,
                       const input_control_param_t* param )
{
    assert( !input_priv(p_input)->is_running );
    Control( p_input, i_type, *param );
}
