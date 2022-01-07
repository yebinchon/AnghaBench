
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_22__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int i_time_scale; scalar_t__ b_valid; int i_num_units_in_tick; } ;
struct TYPE_27__ {TYPE_3__ vui; int i_level; int i_profile; } ;
typedef TYPE_8__ h264_sequence_parameter_set_t ;
typedef int h264_picture_parameter_set_t ;
struct TYPE_23__ {scalar_t__ i_sar_num; scalar_t__ i_sar_den; int i_frame_rate; int color_range; int space; int transfer; int primaries; int i_frame_rate_base; int i_visible_height; int i_visible_width; int i_height; int i_width; } ;
struct TYPE_26__ {scalar_t__ i_extra; int * p_extra; TYPE_4__ video; int i_level; int i_profile; } ;
struct TYPE_20__ {scalar_t__ primaries; } ;
struct TYPE_21__ {TYPE_1__ video; } ;
struct TYPE_28__ {TYPE_7__ fmt_out; TYPE_2__ fmt_in; TYPE_10__* p_sys; } ;
typedef TYPE_9__ decoder_t ;
struct TYPE_19__ {int i_divider_num; int i_divider_den; } ;
struct TYPE_17__ {TYPE_6__* pps; TYPE_5__* sps; TYPE_14__ dts; TYPE_8__ const* p_active_sps; int const* p_active_pps; } ;
typedef TYPE_10__ decoder_sys_t ;
struct TYPE_18__ {size_t i_buffer; int p_buffer; } ;
typedef TYPE_11__ block_t ;
struct TYPE_25__ {TYPE_11__* p_block; int const* p_pps; } ;
struct TYPE_24__ {TYPE_11__* p_block; TYPE_8__ const* p_sps; } ;


 scalar_t__ COLOR_PRIMARIES_UNDEF ;
 size_t H264_PPS_ID_MAX ;
 size_t H264_SPS_ID_MAX ;
 int date_Change (TYPE_14__*,int,int ) ;
 int h264_get_colorimetry (TYPE_8__ const*,int *,int *,int *,int *) ;
 int h264_get_picture_size (TYPE_8__ const*,int *,int *,int *,int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;

__attribute__((used)) static void ActivateSets( decoder_t *p_dec, const h264_sequence_parameter_set_t *p_sps,
                                            const h264_picture_parameter_set_t *p_pps )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->p_active_pps = p_pps;
    p_sys->p_active_sps = p_sps;

    if( p_sps )
    {
        p_dec->fmt_out.i_profile = p_sps->i_profile;
        p_dec->fmt_out.i_level = p_sps->i_level;

        (void) h264_get_picture_size( p_sps, &p_dec->fmt_out.video.i_width,
                                      &p_dec->fmt_out.video.i_height,
                                      &p_dec->fmt_out.video.i_visible_width,
                                      &p_dec->fmt_out.video.i_visible_height );

        if( p_sps->vui.i_sar_num != 0 && p_sps->vui.i_sar_den != 0 )
        {
            p_dec->fmt_out.video.i_sar_num = p_sps->vui.i_sar_num;
            p_dec->fmt_out.video.i_sar_den = p_sps->vui.i_sar_den;
        }

        if( !p_dec->fmt_out.video.i_frame_rate ||
            !p_dec->fmt_out.video.i_frame_rate_base )
        {


            if(p_sps->vui.b_valid &&
               p_sps->vui.i_num_units_in_tick > 0 &&
               p_sps->vui.i_time_scale > 1 )
            {
                date_Change( &p_sys->dts, p_sps->vui.i_time_scale,
                                          p_sps->vui.i_num_units_in_tick );
            }

            p_dec->fmt_out.video.i_frame_rate = p_sys->dts.i_divider_num >> 1;
            p_dec->fmt_out.video.i_frame_rate_base = p_sys->dts.i_divider_den;
        }

        if( p_dec->fmt_in.video.primaries == COLOR_PRIMARIES_UNDEF &&
            p_sps->vui.b_valid )
        {
            h264_get_colorimetry( p_sps, &p_dec->fmt_out.video.primaries,
                                  &p_dec->fmt_out.video.transfer,
                                  &p_dec->fmt_out.video.space,
                                  &p_dec->fmt_out.video.color_range );
        }

        if( p_dec->fmt_out.i_extra == 0 && p_pps )
        {
            const block_t *p_spsblock = ((void*)0);
            const block_t *p_ppsblock = ((void*)0);
            for( size_t i=0; i<=H264_SPS_ID_MAX && !p_spsblock; i++ )
                if( p_sps == p_sys->sps[i].p_sps )
                    p_spsblock = p_sys->sps[i].p_block;

            for( size_t i=0; i<=H264_PPS_ID_MAX && !p_ppsblock; i++ )
                if( p_pps == p_sys->pps[i].p_pps )
                    p_ppsblock = p_sys->pps[i].p_block;

            if( p_spsblock && p_ppsblock )
            {
                size_t i_alloc = p_ppsblock->i_buffer + p_spsblock->i_buffer;
                p_dec->fmt_out.p_extra = malloc( i_alloc );
                if( p_dec->fmt_out.p_extra )
                {
                    uint8_t*p_buf = p_dec->fmt_out.p_extra;
                    p_dec->fmt_out.i_extra = i_alloc;
                    memcpy( &p_buf[0], p_spsblock->p_buffer, p_spsblock->i_buffer );
                    memcpy( &p_buf[p_spsblock->i_buffer], p_ppsblock->p_buffer,
                            p_ppsblock->i_buffer );
                }
            }
        }
    }
}
