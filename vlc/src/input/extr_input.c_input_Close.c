
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_2__ {int interrupt; int thread; scalar_t__ is_running; } ;


 int Destroy (int *) ;
 TYPE_1__* input_priv (int *) ;
 int vlc_interrupt_deinit (int *) ;
 int vlc_join (int ,int *) ;

void input_Close( input_thread_t *p_input )
{
    if( input_priv(p_input)->is_running )
        vlc_join( input_priv(p_input)->thread, ((void*)0) );
    vlc_interrupt_deinit( &input_priv(p_input)->interrupt );
    Destroy(p_input);
}
