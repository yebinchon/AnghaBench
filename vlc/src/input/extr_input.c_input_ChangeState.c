
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_2__ {int i_state; int p_item; } ;


 int ERROR_S ;
 int input_SendEventState (int *,int,int ) ;
 int input_item_SetErrorWhenReading (int ,int) ;
 TYPE_1__* input_priv (int *) ;

__attribute__((used)) static void input_ChangeState( input_thread_t *p_input, int i_state,
                               vlc_tick_t state_date )
{
    if( input_priv(p_input)->i_state == i_state )
        return;

    input_priv(p_input)->i_state = i_state;
    if( i_state == ERROR_S )
        input_item_SetErrorWhenReading( input_priv(p_input)->p_item, 1 );
    input_SendEventState( p_input, i_state, state_date );
}
