
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_value_t ;
typedef int input_thread_t ;
struct TYPE_3__ {int val; } ;
typedef TYPE_1__ input_control_param_t ;


 int input_ControlPush (int *,int,TYPE_1__*) ;

__attribute__((used)) static inline int input_ControlPushHelper( input_thread_t *p_input, int i_type, vlc_value_t *val )
{
    if( val != ((void*)0) )
    {
        input_control_param_t param = { .val = *val };
        return input_ControlPush( p_input, i_type, &param );
    }
    else
    {
        return input_ControlPush( p_input, i_type, ((void*)0) );
    }
}
