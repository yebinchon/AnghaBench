
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {int i_slave; scalar_t__ i_attachment; int * p_resource; int p_sout; TYPE_2__* p_item; int * attachment_demux; int * attachment; int * stats; scalar_t__ p_es_out_display; scalar_t__ p_es_out; scalar_t__ i_seekpoint_offset; scalar_t__ i_title_offset; int master; int * slave; } ;
typedef TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {int lock; int p_stats; } ;
typedef TYPE_2__ input_item_t ;


 int END_S ;
 int ES_OUT_MODE_END ;
 int ES_OUT_MODE_NONE ;
 int InputSourceDestroy (int ) ;
 int TAB_CLEAN (int,int *) ;
 int VLC_TICK_INVALID ;
 int es_out_Delete (scalar_t__) ;
 int es_out_SetMode (scalar_t__,int ) ;
 int free (int *) ;
 int input_ChangeState (int *,int ,int ) ;
 TYPE_1__* input_priv (int *) ;
 int input_resource_Release (int *) ;
 int input_resource_RequestSout (int *,int ,int *) ;
 int input_resource_SetInput (int *,int *) ;
 int input_stats_Compute (int *,int ) ;
 int vlc_input_attachment_Delete (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void End( input_thread_t * p_input )
{
    input_thread_private_t *priv = input_priv(p_input);


    input_ChangeState( p_input, END_S, VLC_TICK_INVALID );


    es_out_SetMode( priv->p_es_out, ES_OUT_MODE_NONE );


    for( int i = 0; i < priv->i_slave; i++ )
        InputSourceDestroy( priv->slave[i] );
    free( priv->slave );


    InputSourceDestroy( priv->master );
    priv->i_title_offset = 0;
    priv->i_seekpoint_offset = 0;


    if( priv->p_es_out )
        es_out_Delete( priv->p_es_out );
    es_out_SetMode( priv->p_es_out_display, ES_OUT_MODE_END );

    if( priv->stats != ((void*)0) )
    {
        input_item_t *item = priv->p_item;

        vlc_mutex_lock( &item->lock );
        input_stats_Compute( priv->stats, item->p_stats );
        vlc_mutex_unlock( &item->lock );
    }

    vlc_mutex_lock( &priv->p_item->lock );
    if( priv->i_attachment > 0 )
    {
        for( int i = 0; i < priv->i_attachment; i++ )
            vlc_input_attachment_Delete( priv->attachment[i] );
        TAB_CLEAN( priv->i_attachment, priv->attachment );
        free( priv->attachment_demux);
        priv->attachment_demux = ((void*)0);
    }

    vlc_mutex_unlock( &input_priv(p_input)->p_item->lock );


    input_resource_RequestSout( input_priv(p_input)->p_resource,
                                 input_priv(p_input)->p_sout, ((void*)0) );
    input_resource_SetInput( input_priv(p_input)->p_resource, ((void*)0) );
    if( input_priv(p_input)->p_resource )
    {
        input_resource_Release( input_priv(p_input)->p_resource );
        input_priv(p_input)->p_resource = ((void*)0);
    }
}
