
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {TYPE_1__* master; int p_item; int interrupt; int input; } ;
typedef TYPE_2__ input_thread_private_t ;
struct TYPE_3__ {int p_demux; } ;


 int DEMUX_IS_PLAYLIST ;
 int End (int *) ;
 int Init (int *) ;
 int MainLoop (int *,int) ;
 scalar_t__ demux_Control (int ,int ,int*) ;
 int input_SendEventDead (int *) ;
 scalar_t__ input_item_ShouldPreparseSubItems (int ) ;
 int vlc_interrupt_set (int *) ;

__attribute__((used)) static void *Preparse( void *data )
{
    input_thread_private_t *priv = data;
    input_thread_t *p_input = &priv->input;

    vlc_interrupt_set(&priv->interrupt);

    if( !Init( p_input ) )
    {

        bool b_is_playlist = 0;

        if ( input_item_ShouldPreparseSubItems( priv->p_item )
          && demux_Control( priv->master->p_demux, DEMUX_IS_PLAYLIST,
                            &b_is_playlist ) )
            b_is_playlist = 0;
        if( b_is_playlist )
            MainLoop( p_input, 0 );
        End( p_input );
    }

    input_SendEventDead( p_input );
    return ((void*)0);
}
