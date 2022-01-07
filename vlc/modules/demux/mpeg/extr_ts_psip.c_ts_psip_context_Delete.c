
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int i_size; int * p_elems; } ;
struct TYPE_5__ {TYPE_4__ eits; TYPE_4__ etts; scalar_t__ p_a65; scalar_t__ p_vct; scalar_t__ p_stt; scalar_t__ p_mgt; } ;
typedef TYPE_1__ ts_psip_context_t ;


 int ARRAY_RESET (TYPE_4__) ;
 int assert (int) ;
 int atsc_a65_handle_Release (scalar_t__) ;
 int dvbpsi_atsc_DeleteEIT (int ) ;
 int dvbpsi_atsc_DeleteETT (int ) ;
 int dvbpsi_atsc_DeleteMGT (scalar_t__) ;
 int dvbpsi_atsc_DeleteSTT (scalar_t__) ;
 int dvbpsi_atsc_DeleteVCT (scalar_t__) ;
 int free (TYPE_1__*) ;

void ts_psip_context_Delete( ts_psip_context_t *p_ctx )
{
    assert( !p_ctx->p_mgt || !p_ctx->etts.i_size );
    assert( !p_ctx->p_vct || !p_ctx->eits.i_size );

    if( p_ctx->p_mgt )
        dvbpsi_atsc_DeleteMGT( p_ctx->p_mgt );
    if( p_ctx->p_stt )
        dvbpsi_atsc_DeleteSTT( p_ctx->p_stt );
    if ( p_ctx->p_vct )
        dvbpsi_atsc_DeleteVCT( p_ctx->p_vct );
    if( p_ctx->p_a65 )
        atsc_a65_handle_Release( p_ctx->p_a65 );

    for( int i=0; i<p_ctx->etts.i_size; i++ )
        dvbpsi_atsc_DeleteETT( p_ctx->etts.p_elems[i] );
    for( int i=0; i<p_ctx->eits.i_size; i++ )
        dvbpsi_atsc_DeleteEIT( p_ctx->eits.p_elems[i] );
    ARRAY_RESET( p_ctx->etts );
    ARRAY_RESET( p_ctx->eits );
    free( p_ctx );
}
