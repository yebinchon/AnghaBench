
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * palette; int i_original_frame_height; int i_original_frame_width; } ;
struct TYPE_9__ {TYPE_1__ spu; } ;
struct TYPE_10__ {scalar_t__ i_codec; int i_extra; TYPE_2__ subs; scalar_t__ p_extra; int i_bitrate; scalar_t__ i_original_fourcc; int i_profile; int i_cat; } ;
struct TYPE_11__ {TYPE_3__ fmt; int i_track_ID; int i_height; int i_width; } ;
typedef TYPE_4__ mp4_track_t ;
typedef int demux_t ;
struct TYPE_12__ {int i_objectProfileIndication; int i_decoder_specific_info_len; int p_decoder_specific_info; int i_avg_bitrate; } ;
typedef TYPE_5__ MP4_descriptor_decoder_config_t ;


 int AUDIO_ES ;
 int GetDWBE (char*) ;
 int MPEG4_Codec_By_ObjectType (int,int ,int,scalar_t__*,int *) ;
 int SPU_ES ;
 int SPU_PALETTE_DEFINED ;
 scalar_t__ VLC_CODEC_QCELP ;
 scalar_t__ VLC_CODEC_SPU ;
 scalar_t__ malloc (int) ;
 int memcpy (scalar_t__,int ,int) ;
 int msg_Warn (int *,char*,int,int ) ;

__attribute__((used)) static void SetupESDS( demux_t *p_demux, mp4_track_t *p_track, const MP4_descriptor_decoder_config_t *p_decconfig )
{

    switch( p_decconfig->i_objectProfileIndication )
    {

    case( 0xe0 ):
        if( p_track->fmt.i_cat == SPU_ES )
        {
            p_track->fmt.i_codec = VLC_CODEC_SPU;
            if( p_track->i_width > 0 )
                p_track->fmt.subs.spu.i_original_frame_width = p_track->i_width;
            if( p_track->i_height > 0 )
                p_track->fmt.subs.spu.i_original_frame_height = p_track->i_height;
        }
        break;
    case( 0xe1 ):
        if( p_track->fmt.i_cat == AUDIO_ES )
        {
            p_track->fmt.i_codec = VLC_CODEC_QCELP;
        }
        break;


    default:
        if( MPEG4_Codec_By_ObjectType( p_decconfig->i_objectProfileIndication,
                                       p_decconfig->p_decoder_specific_info,
                                       p_decconfig->i_decoder_specific_info_len,
                                       &p_track->fmt.i_codec,
                                       &p_track->fmt.i_profile ) )
            break;

        msg_Warn( p_demux,
                  "unknown objectProfileIndication(0x%x) (Track[ID 0x%x])",
                  p_decconfig->i_objectProfileIndication,
                  p_track->i_track_ID );
        return;
    }

    p_track->fmt.i_original_fourcc = 0;
    p_track->fmt.i_bitrate = p_decconfig->i_avg_bitrate;

    p_track->fmt.i_extra = p_decconfig->i_decoder_specific_info_len;
    if( p_track->fmt.i_extra > 0 )
    {
        p_track->fmt.p_extra = malloc( p_track->fmt.i_extra );
        memcpy( p_track->fmt.p_extra, p_decconfig->p_decoder_specific_info,
                p_track->fmt.i_extra );
    }
    if( p_track->fmt.i_codec == VLC_CODEC_SPU &&
            p_track->fmt.i_extra >= 16 * 4 )
    {
        for( int i = 0; i < 16; i++ )
        {
            p_track->fmt.subs.spu.palette[1 + i] =
                    GetDWBE((char*)p_track->fmt.p_extra + i * 4);
        }
        p_track->fmt.subs.spu.palette[0] = SPU_PALETTE_DEFINED;
    }
}
