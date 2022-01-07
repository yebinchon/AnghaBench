
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_3__ {scalar_t__ p_spu; scalar_t__ p_spu_blender; int p_final_conv_static; int p_uf_chain; int p_conv_static; int p_conv_nonstatic; int p_f_chain; int decoder_out; int fmt_input_video; int encoder; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 int VLC_UNUSED (int *) ;
 int es_format_Clean (int *) ;
 int filter_DeleteBlend (scalar_t__) ;
 int spu_Destroy (scalar_t__) ;
 int transcode_encoder_close (int ) ;
 int transcode_encoder_delete (int ) ;
 int transcode_remove_filters (int *) ;
 int video_format_Clean (int *) ;

void transcode_video_clean( sout_stream_t *p_stream,
                                   sout_stream_id_sys_t *id )
{
    VLC_UNUSED(p_stream);


    transcode_encoder_close( id->encoder );
    transcode_encoder_delete( id->encoder );

    video_format_Clean( &id->fmt_input_video );
    es_format_Clean( &id->decoder_out );


    transcode_remove_filters( &id->p_f_chain );
    transcode_remove_filters( &id->p_conv_nonstatic );
    transcode_remove_filters( &id->p_conv_static );
    transcode_remove_filters( &id->p_uf_chain );
    transcode_remove_filters( &id->p_final_conv_static );
    if( id->p_spu_blender )
        filter_DeleteBlend( id->p_spu_blender );
    if( id->p_spu )
        spu_Destroy( id->p_spu );
}
