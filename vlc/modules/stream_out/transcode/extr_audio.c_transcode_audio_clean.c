
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_3__ {int * p_af_chain; int decoder_out; int encoder; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 int aout_FiltersDelete (int *,int *) ;
 int es_format_Clean (int *) ;
 int transcode_encoder_close (int ) ;
 int transcode_encoder_delete (int ) ;

void transcode_audio_clean( sout_stream_t *p_stream, sout_stream_id_sys_t *id )
{

    transcode_encoder_close( id->encoder );
    transcode_encoder_delete( id->encoder );

    es_format_Clean( &id->decoder_out );


    if( id->p_af_chain != ((void*)0) )
        aout_FiltersDelete( p_stream, id->p_af_chain );
}
