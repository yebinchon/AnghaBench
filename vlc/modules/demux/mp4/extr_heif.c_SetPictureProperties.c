
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_23__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_18__ ;
typedef struct TYPE_32__ TYPE_17__ ;
typedef struct TYPE_31__ TYPE_16__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct heif_private_t {int i_image_duration; int p_root; } ;
struct TYPE_39__ {int min_luminance; int max_luminance; void* white_point; void* primaries; } ;
struct TYPE_37__ {int MaxFALL; int MaxCLL; } ;
struct TYPE_27__ {int i_frame_rate; int i_frame_rate_base; TYPE_5__ mastering; TYPE_3__ lighting; int color_range; int space; int transfer; int primaries; int orientation; int i_sar_den; int i_sar_num; int i_visible_height; int i_visible_width; } ;
struct TYPE_31__ {int i_extra; TYPE_12__ video; int i_codec; void* p_extra; } ;
typedef TYPE_16__ es_format_t ;
struct TYPE_32__ {scalar_t__ p_sys; } ;
typedef TYPE_17__ demux_t ;
struct TYPE_43__ {int i_blob; int p_blob; } ;
struct TYPE_42__ {size_t i_item_id; size_t i_association_count; TYPE_7__* p_assocs; } ;
struct TYPE_41__ {scalar_t__ i_property_index; } ;
struct TYPE_40__ {int i_luminanceMin; int i_luminanceMax; int white_point; int primaries; } ;
struct TYPE_38__ {int i_maxFALL; int i_maxCLL; } ;
struct TYPE_34__ {int i_full_range; int i_matrix_idx; int i_transfer_function_idx; int i_primary_idx; } ;
struct TYPE_36__ {TYPE_1__ nclc; } ;
struct TYPE_35__ {size_t i_entry_count; TYPE_8__* p_entries; } ;
struct TYPE_30__ {TYPE_6__* p_SmDm; TYPE_4__* p_CoLL; TYPE_2__* p_colr; TYPE_14__* p_irot; TYPE_13__* p_pasp; TYPE_11__* p_ispe; TYPE_10__* p_av1C; TYPE_9__* p_binary; } ;
struct TYPE_33__ {int i_type; TYPE_15__ data; } ;
struct TYPE_29__ {int i_ccw_degrees; } ;
struct TYPE_28__ {int i_vertical_spacing; int i_horizontal_spacing; } ;
struct TYPE_26__ {int i_height; int i_width; } ;
struct TYPE_25__ {int i_av1C; int p_av1C; } ;
typedef TYPE_18__ MP4_Box_t ;
 TYPE_23__* BOXDATA (TYPE_18__ const*) ;
 int COLOR_RANGE_FULL ;
 int COLOR_RANGE_LIMITED ;
 TYPE_18__* MP4_BoxGet (int ,char*,...) ;
 int ORIENT_NORMAL ;
 int ORIENT_ROTATED_180 ;
 int ORIENT_ROTATED_270 ;
 int ORIENT_ROTATED_90 ;
 int VLC_CODEC_AV1 ;
 int VLC_CODEC_H264 ;
 int VLC_CODEC_HEVC ;
 int VLC_CODEC_JPEG ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int iso_23001_8_cp_to_vlc_primaries (int ) ;
 int iso_23001_8_mc_to_vlc_coeffs (int ) ;
 int iso_23001_8_tc_to_vlc_xfer (int ) ;
 void* malloc (int) ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static int SetPictureProperties( demux_t *p_demux, uint32_t i_item_id,
                                 es_format_t *fmt, const MP4_Box_t **p_header )
{
    struct heif_private_t *p_sys = (void *) p_demux->p_sys;

    const MP4_Box_t *p_ipma = MP4_BoxGet( p_sys->p_root, "meta/iprp/ipma" );
    if( !p_ipma )
        return VLC_EGENERIC;


    for( uint32_t i=0; i<BOXDATA(p_ipma)->i_entry_count; i++ )
    {
        if( BOXDATA(p_ipma)->p_entries[i].i_item_id != i_item_id )
            continue;

        for( uint8_t j=0; j<BOXDATA(p_ipma)->p_entries[i].i_association_count; j++ )
        {
            if( !BOXDATA(p_ipma)->p_entries[i].p_assocs[j].i_property_index )
                continue;

            const MP4_Box_t *p_prop = MP4_BoxGet( p_sys->p_root, "meta/iprp/ipco/[%u]",
                BOXDATA(p_ipma)->p_entries[i].p_assocs[j].i_property_index - 1 );
            if( !p_prop )
                continue;

            switch( p_prop->i_type )
            {
                case 133:
                case 136:
                    if( !fmt->p_extra && p_prop->data.p_binary &&
                       ((fmt->i_codec == VLC_CODEC_HEVC && p_prop->i_type == 133) ||
                        (fmt->i_codec == VLC_CODEC_H264 && p_prop->i_type == 136) ))
                    {
                        fmt->p_extra = malloc( p_prop->data.p_binary->i_blob );
                        if( fmt->p_extra )
                        {
                            fmt->i_extra = p_prop->data.p_binary->i_blob;
                            memcpy( fmt->p_extra, p_prop->data.p_binary->p_blob, fmt->i_extra );
                        }
                    }
                    break;
                case 137:
                    if( fmt->i_codec == VLC_CODEC_AV1 && !fmt->i_extra &&
                        p_prop->data.p_av1C->i_av1C >= 4 )
                    {
                        fmt->p_extra = malloc( p_prop->data.p_av1C->i_av1C );
                        if( fmt->p_extra )
                        {
                            fmt->i_extra = p_prop->data.p_av1C->i_av1C ;
                            memcpy( fmt->p_extra, p_prop->data.p_av1C->p_av1C, fmt->i_extra );
                        }
                    }
                    break;
                case 130:
                    if( fmt->i_codec == VLC_CODEC_JPEG )
                        *p_header = p_prop;
                    break;
                case 131:
                    fmt->video.i_visible_width = p_prop->data.p_ispe->i_width;
                    fmt->video.i_visible_height = p_prop->data.p_ispe->i_height;
                    break;
                case 128:
                    if( p_prop->data.p_pasp->i_horizontal_spacing &&
                        p_prop->data.p_pasp->i_vertical_spacing )
                    {
                        fmt->video.i_sar_num = p_prop->data.p_pasp->i_horizontal_spacing;
                        fmt->video.i_sar_den = p_prop->data.p_pasp->i_vertical_spacing;
                    }
                    break;
                case 132:
                    switch( p_prop->data.p_irot->i_ccw_degrees % 360 )
                    {
                        default:
                        case 0: fmt->video.orientation = ORIENT_NORMAL ; break;
                        case 90: fmt->video.orientation = ORIENT_ROTATED_90; break;
                        case 180: fmt->video.orientation = ORIENT_ROTATED_180 ; break;
                        case 270: fmt->video.orientation = ORIENT_ROTATED_270 ; break;
                    }
                    break;
                case 134:
                    fmt->video.primaries = iso_23001_8_cp_to_vlc_primaries(
                                            p_prop->data.p_colr->nclc.i_primary_idx );
                    fmt->video.transfer = iso_23001_8_tc_to_vlc_xfer(
                                            p_prop->data.p_colr->nclc.i_transfer_function_idx );
                    fmt->video.space = iso_23001_8_mc_to_vlc_coeffs(
                                        p_prop->data.p_colr->nclc.i_matrix_idx );
                    fmt->video.color_range = p_prop->data.p_colr->nclc.i_full_range ?
                                COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
                    break;
                case 135:
                    fmt->video.lighting.MaxCLL = p_prop->data.p_CoLL->i_maxCLL;
                    fmt->video.lighting.MaxFALL = p_prop->data.p_CoLL->i_maxFALL;
                    break;
                case 129:
                    memcpy( fmt->video.mastering.primaries,
                            p_prop->data.p_SmDm->primaries, sizeof(uint16_t) * 6 );
                    memcpy( fmt->video.mastering.white_point,
                            p_prop->data.p_SmDm->white_point, sizeof(uint16_t) * 2 );
                    fmt->video.mastering.max_luminance = p_prop->data.p_SmDm->i_luminanceMax;
                    fmt->video.mastering.min_luminance = p_prop->data.p_SmDm->i_luminanceMin;
                    break;
            }
        }
    }

    fmt->video.i_frame_rate = 1000;
    fmt->video.i_frame_rate_base = p_sys->i_image_duration / 1000;

    return VLC_SUCCESS;
}
