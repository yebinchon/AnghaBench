
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_22__ {int i_start; scalar_t__ i_stop; struct TYPE_22__* p_next; } ;
typedef TYPE_3__ subpicture_t ;
typedef int sout_stream_t ;
struct TYPE_23__ {scalar_t__ (* pf_get_output_dimensions ) (int ,unsigned int*,unsigned int*) ;int encoder; TYPE_2__* p_enccfg; int callback_data; int (* pf_send_subpicture ) (int ,TYPE_3__*) ;scalar_t__ (* pf_get_master_drift ) (int ) ;TYPE_15__* p_decoder; } ;
typedef TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_18__ {unsigned int i_sar_num; unsigned int i_visible_width; unsigned int i_width; unsigned int i_sar_den; unsigned int i_visible_height; unsigned int i_height; } ;
struct TYPE_24__ {TYPE_11__ video; } ;
typedef TYPE_5__ es_format_t ;
typedef int block_t ;
struct TYPE_20__ {unsigned int i_width; unsigned int i_height; } ;
struct TYPE_21__ {scalar_t__ i_codec; TYPE_1__ spu; } ;
struct TYPE_19__ {int (* pf_decode ) (TYPE_15__*,int *) ;} ;


 int VIDEO_ES ;
 int VLCDEC_SUCCESS ;
 int VLC_CODEC_TEXT ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int block_ChainAppend (int **,int *) ;
 int es_format_Clean (TYPE_5__*) ;
 int es_format_Init (TYPE_5__*,int ,int ) ;
 int stub1 (TYPE_15__*,int *) ;
 scalar_t__ stub2 (int ) ;
 int stub3 (int ,TYPE_3__*) ;
 scalar_t__ stub4 (int ,unsigned int*,unsigned int*) ;
 int subpicture_Delete (TYPE_3__*) ;
 int subpicture_Update (TYPE_3__*,TYPE_11__*,TYPE_11__*,int ) ;
 TYPE_3__* transcode_dequeue_all_subs (TYPE_4__*) ;
 int * transcode_encoder_encode (int ,TYPE_3__*) ;

int transcode_spu_process( sout_stream_t *p_stream,
                                  sout_stream_id_sys_t *id,
                                  block_t *in, block_t **out )
{
    VLC_UNUSED(p_stream);
    *out = ((void*)0);
    bool b_error = 0;

    int ret = id->p_decoder->pf_decode( id->p_decoder, in );
    if( ret != VLCDEC_SUCCESS )
        return VLC_EGENERIC;

    subpicture_t *p_subpics = transcode_dequeue_all_subs( id );

    do
    {
        subpicture_t *p_subpic = p_subpics;
        if( p_subpic == ((void*)0) )
            break;
        p_subpics = p_subpic->p_next;
        p_subpic->p_next = ((void*)0);

        if( b_error )
        {
            subpicture_Delete( p_subpic );
            continue;
        }

        vlc_tick_t drift;
        if( id->pf_get_master_drift &&
            (drift = id->pf_get_master_drift( id->callback_data )) )
        {
            p_subpic->i_start -= drift;
            if( p_subpic->i_stop )
                p_subpic->i_stop -= drift;
        }

        if( id->p_enccfg->i_codec == 0 )
        {
            if( !id->pf_send_subpicture )
            {
                subpicture_Delete( p_subpic );
                b_error = 1;
            }
            else id->pf_send_subpicture( id->callback_data, p_subpic );
        }
        else
        {
            block_t *p_block;

            es_format_t fmt;
            es_format_Init( &fmt, VIDEO_ES, VLC_CODEC_TEXT );

            unsigned w, h;
            if( id->pf_get_output_dimensions == ((void*)0) ||
                id->pf_get_output_dimensions( id->callback_data,
                                              &w, &h ) != VLC_SUCCESS )
            {
                w = id->p_enccfg->spu.i_width;
                h = id->p_enccfg->spu.i_height;
            }

            fmt.video.i_sar_num =
            fmt.video.i_visible_width =
            fmt.video.i_width = w;

            fmt.video.i_sar_den =
            fmt.video.i_visible_height =
            fmt.video.i_height = h;

            subpicture_Update( p_subpic, &fmt.video, &fmt.video, p_subpic->i_start );
            es_format_Clean( &fmt );

            p_block = transcode_encoder_encode( id->encoder, p_subpic );
            subpicture_Delete( p_subpic );
            if( p_block )
                block_ChainAppend( out, p_block );
            else
                b_error = 1;
        }
    } while( p_subpics );

    return b_error ? VLC_EGENERIC : VLC_SUCCESS;
}
