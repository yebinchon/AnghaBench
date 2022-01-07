
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_58__ TYPE_9__ ;
typedef struct TYPE_57__ TYPE_8__ ;
typedef struct TYPE_56__ TYPE_7__ ;
typedef struct TYPE_55__ TYPE_6__ ;
typedef struct TYPE_54__ TYPE_5__ ;
typedef struct TYPE_53__ TYPE_4__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_32__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_22__ ;
typedef struct TYPE_48__ TYPE_1__ ;
typedef struct TYPE_47__ TYPE_19__ ;
typedef struct TYPE_46__ TYPE_11__ ;
typedef struct TYPE_45__ TYPE_10__ ;


typedef int sout_stream_t ;
struct TYPE_45__ {int i_chroma; int i_sar_den; int i_sar_num; } ;
struct TYPE_55__ {int b_error; int encoder; TYPE_22__* p_enccfg; int * p_final_conv_static; int * p_uf_chain; int * p_conv_static; int * p_conv_nonstatic; int * p_f_chain; scalar_t__ downstream_id; TYPE_32__* p_decoder; scalar_t__ (* pf_transcode_downstream_add ) (int *,int *,int ) ;int p_filterscfg; TYPE_10__ fmt_input_video; int * p_spu_blender; } ;
typedef TYPE_6__ sout_stream_id_sys_t ;
struct TYPE_46__ {int i_sar_den; int i_sar_num; } ;
struct TYPE_56__ {TYPE_11__ format; struct TYPE_56__* p_next; } ;
typedef TYPE_7__ picture_t ;
typedef int filter_chain_t ;
struct TYPE_57__ {TYPE_10__ video; } ;
typedef TYPE_8__ es_format_t ;
struct TYPE_58__ {int i_flags; } ;
typedef TYPE_9__ block_t ;
struct TYPE_54__ {int i_height; int i_width; } ;
struct TYPE_48__ {int i_count; } ;
struct TYPE_52__ {scalar_t__ num; } ;
struct TYPE_53__ {TYPE_1__ threads; TYPE_3__ fps; } ;
struct TYPE_50__ {int video; } ;
struct TYPE_51__ {int (* pf_decode ) (TYPE_32__*,TYPE_9__*) ;int fmt_in; TYPE_2__ fmt_out; } ;
struct TYPE_49__ {char* psz_name; TYPE_4__ video; int i_codec; } ;
struct TYPE_47__ {TYPE_5__ video; } ;


 size_t ARRAY_SIZE (int **) ;
 int BLOCK_FLAG_END_OF_SEQUENCE ;
 TYPE_7__* RenderSubpictures (int *,TYPE_6__*,TYPE_7__*) ;
 int VIDEO_ES ;
 int VLCDEC_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (int *) ;
 scalar_t__ VLC_SUCCESS ;
 int assert (int) ;
 int block_ChainAppend (TYPE_9__**,TYPE_9__*) ;
 int es_format_Init (TYPE_8__*,int ,int ) ;
 int filter_DeleteBlend (int *) ;
 TYPE_7__* filter_chain_VideoFilter (int *,TYPE_7__*) ;
 int filtered_video_format (TYPE_6__*,TYPE_7__*) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,char*,...) ;
 int msg_Info (int *,char*,...) ;
 int msg_Warn (int *,char*) ;
 int picture_Release (TYPE_7__*) ;
 int stub1 (TYPE_32__*,TYPE_9__*) ;
 scalar_t__ stub2 (int *,int *,int ) ;
 int tag_last_block_with_flag (TYPE_9__**,int) ;
 TYPE_7__* transcode_dequeue_all_pics (TYPE_6__*) ;
 int transcode_encoder_close (int ) ;
 scalar_t__ transcode_encoder_drain (int ,TYPE_9__**) ;
 TYPE_9__* transcode_encoder_encode (int ,TYPE_7__*) ;
 TYPE_19__* transcode_encoder_format_in (int ) ;
 int transcode_encoder_format_out (int ) ;
 TYPE_9__* transcode_encoder_get_output_async (int ) ;
 scalar_t__ transcode_encoder_open (int ,TYPE_22__*) ;
 scalar_t__ transcode_encoder_opened (int ) ;
 int transcode_encoder_video_configure (int ,int *,TYPE_22__*,int ,int ) ;
 int transcode_remove_filters (int **) ;
 int transcode_video_filters_configured (TYPE_6__*) ;
 scalar_t__ transcode_video_filters_init (int *,int ,int,TYPE_8__*,TYPE_19__*,TYPE_6__*) ;
 scalar_t__ unlikely (int) ;
 int video_format_Clean (TYPE_10__*) ;
 int video_format_Copy (TYPE_10__*,TYPE_11__*) ;
 int video_format_IsSimilar (TYPE_10__*,TYPE_11__*) ;

int transcode_video_process( sout_stream_t *p_stream, sout_stream_id_sys_t *id,
                                    block_t *in, block_t **out )
{
    *out = ((void*)0);

    bool b_eos = in && (in->i_flags & BLOCK_FLAG_END_OF_SEQUENCE);

    int ret = id->p_decoder->pf_decode( id->p_decoder, in );
    if( ret != VLCDEC_SUCCESS )
        return VLC_EGENERIC;

    picture_t *p_pics = transcode_dequeue_all_pics( id );

    do
    {
        picture_t *p_pic = p_pics;
        if( p_pic )
        {
            p_pics = p_pic->p_next;
            p_pic->p_next = ((void*)0);
        }

        if( id->b_error && p_pic )
        {
            picture_Release( p_pic );
            continue;
        }

        if( p_pic && ( unlikely(!transcode_encoder_opened(id->encoder)) ||
              !video_format_IsSimilar( &id->fmt_input_video, &p_pic->format ) ) )
        {
            if( !transcode_encoder_opened(id->encoder) )
            {
                assert( !id->p_f_chain && !id->p_uf_chain );
                transcode_encoder_video_configure( VLC_OBJECT(p_stream),
                                                   &id->p_decoder->fmt_out.video,
                                                   id->p_enccfg,
                                                   filtered_video_format( id, p_pic ),
                                                   id->encoder );

            }
            else
            {
                msg_Info( p_stream, "aspect-ratio changed, reiniting. %i -> %i : %i -> %i.",
                            id->fmt_input_video.i_sar_num, p_pic->format.i_sar_num,
                            id->fmt_input_video.i_sar_den, p_pic->format.i_sar_den
                        );

                transcode_remove_filters( &id->p_f_chain );
                transcode_remove_filters( &id->p_conv_nonstatic );
                transcode_remove_filters( &id->p_conv_static );
                transcode_remove_filters( &id->p_uf_chain );
                transcode_remove_filters( &id->p_final_conv_static );
                if( id->p_spu_blender )
                    filter_DeleteBlend( id->p_spu_blender );
                id->p_spu_blender = ((void*)0);

                video_format_Clean( &id->fmt_input_video );
            }

            video_format_Copy( &id->fmt_input_video, &p_pic->format );

            if( !transcode_video_filters_configured( id ) )
            {
                es_format_t tmpfmt;
                es_format_Init( &tmpfmt, VIDEO_ES, id->fmt_input_video.i_chroma );
                tmpfmt.video = id->fmt_input_video;
                if( transcode_video_filters_init( p_stream,
                                                  id->p_filterscfg,
                                                 (id->p_enccfg->video.fps.num > 0),
                                                 &tmpfmt,
                                                 transcode_encoder_format_in( id->encoder ),
                                                 id ) != VLC_SUCCESS )
                    goto error;
            }


            if( !transcode_encoder_opened( id->encoder ) &&
                transcode_encoder_open( id->encoder, id->p_enccfg ) != VLC_SUCCESS )
            {
                msg_Err( p_stream, "cannot find video encoder (module:%s fourcc:%4.4s). "
                                   "Take a look few lines earlier to see possible reason.",
                                   id->p_enccfg->psz_name ? id->p_enccfg->psz_name : "any",
                                   (char *)&id->p_enccfg->i_codec );
                goto error;
            }

            msg_Dbg( p_stream, "destination (after video filters) %ux%u",
                               transcode_encoder_format_in( id->encoder )->video.i_width,
                               transcode_encoder_format_in( id->encoder )->video.i_height );

            if( !id->downstream_id )
                id->downstream_id =
                    id->pf_transcode_downstream_add( p_stream,
                                                     &id->p_decoder->fmt_in,
                                                     transcode_encoder_format_out( id->encoder ) );
            if( !id->downstream_id )
            {
                msg_Err( p_stream, "cannot output transcoded stream %4.4s",
                                   (char *) &id->p_enccfg->i_codec );
                goto error;
            }
        }





        for ( picture_t *p_in = p_pic; ; p_in = ((void*)0) )
        {

            filter_chain_t * primary_chains[] = { id->p_f_chain,
                                                  id->p_conv_nonstatic,
                                                  id->p_conv_static };
            for( size_t i=0; p_in && i<ARRAY_SIZE(primary_chains); i++ )
            {
                if( !primary_chains[i] )
                    continue;
                p_in = filter_chain_VideoFilter( primary_chains[i], p_in );
            }

            if( !p_in )
                break;

            for ( ;; p_in = ((void*)0) )
            {

                filter_chain_t * secondary_chains[] = { id->p_uf_chain,
                                                        id->p_final_conv_static };
                for( size_t i=0; p_in && i<ARRAY_SIZE(secondary_chains); i++ )
                {
                    if( !secondary_chains[i] )
                        continue;
                    p_in = filter_chain_VideoFilter( secondary_chains[i], p_in );
                }

                if( !p_in )
                    break;


                p_in = RenderSubpictures( p_stream, id, p_in );

                if( p_in )
                {
                    block_t *p_encoded = transcode_encoder_encode( id->encoder, p_in );
                    if( p_encoded )
                        block_ChainAppend( out, p_encoded );
                    picture_Release( p_in );
                }
            }
        }

        if( b_eos )
        {
            msg_Info( p_stream, "Drain/restart on EOS" );
            if( transcode_encoder_drain( id->encoder, out ) != VLC_SUCCESS )
                goto error;
            transcode_encoder_close( id->encoder );

            transcode_remove_filters( &id->p_f_chain );
            transcode_remove_filters( &id->p_conv_nonstatic );
            transcode_remove_filters( &id->p_conv_static );
            transcode_remove_filters( &id->p_uf_chain );
            transcode_remove_filters( &id->p_final_conv_static );
            tag_last_block_with_flag( out, BLOCK_FLAG_END_OF_SEQUENCE );
            b_eos = 0;
        }

        continue;
error:
        if( p_pic )
            picture_Release( p_pic );
        id->b_error = 1;
    } while( p_pics );

    if( id->p_enccfg->video.threads.i_count >= 1 )
    {

        block_ChainAppend( out, transcode_encoder_get_output_async( id->encoder ) );
    }


    if( unlikely( !id->b_error && in == ((void*)0) ) && transcode_encoder_opened( id->encoder ) )
    {
        msg_Dbg( p_stream, "Flushing thread and waiting that");
        if( transcode_encoder_drain( id->encoder, out ) == VLC_SUCCESS )
            msg_Dbg( p_stream, "Flushing done");
        else
            msg_Warn( p_stream, "Flushing failed");
    }

    if( b_eos )
        tag_last_block_with_flag( out, BLOCK_FLAG_END_OF_SEQUENCE );

    return id->b_error ? VLC_EGENERIC : VLC_SUCCESS;
}
