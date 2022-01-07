
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_2__ {int thread; scalar_t__ b_out_pace_control; scalar_t__ b_can_pace_control; int interrupt; int input; } ;
typedef TYPE_1__ input_thread_private_t ;


 int End (int *) ;
 int Init (int *) ;
 int MainLoop (int *,int) ;
 int VLC_THREAD_PRIORITY_LOW ;
 int input_SendEventDead (int *) ;
 int vlc_interrupt_set (int *) ;
 int vlc_set_priority (int ,int ) ;

__attribute__((used)) static void *Run( void *data )
{
    input_thread_private_t *priv = data;
    input_thread_t *p_input = &priv->input;

    vlc_interrupt_set(&priv->interrupt);

    if( !Init( p_input ) )
    {
        if( priv->b_can_pace_control && priv->b_out_pace_control )
        {


            vlc_set_priority( priv->thread, VLC_THREAD_PRIORITY_LOW );
        }

        MainLoop( p_input, 1 );


        End( p_input );
    }

    input_SendEventDead( p_input );
    return ((void*)0);
}
