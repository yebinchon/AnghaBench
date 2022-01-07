
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int i_blockalign; int i_channels; int i_rate; } ;
struct TYPE_14__ {scalar_t__ i_cat; scalar_t__ i_original_fourcc; int i_codec; TYPE_3__ audio; } ;
struct TYPE_15__ {size_t i_sample; size_t i_sample_count; scalar_t__ i_sample_size; int* p_sample_size; size_t i_chunk; TYPE_4__ fmt; TYPE_6__* chunk; TYPE_2__* p_sample; } ;
typedef TYPE_5__ mp4_track_t ;
struct TYPE_16__ {int i_sample_count; int i_sample; int i_sample_first; } ;
typedef TYPE_6__ mp4_chunk_t ;
struct TYPE_17__ {int i_constLPCMframesperaudiopacket; int i_constbytesperaudiopacket; int i_qt_version; int i_compressionid; int i_bytes_per_sample; int i_sample_per_packet; int i_bytes_per_frame; } ;
struct TYPE_11__ {TYPE_7__* p_sample_soun; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
typedef TYPE_7__ MP4_Box_data_sample_soun_t ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ MP4_GetFixedSampleSize (TYPE_5__*,TYPE_7__ const*) ;
 int UINT32_MAX ;





 scalar_t__ VLC_CODEC_DVD_LPCM ;





 scalar_t__ VLC_FOURCC (char,char,char,char) ;

__attribute__((used)) static uint32_t MP4_TrackGetReadSize( mp4_track_t *p_track, uint32_t *pi_nb_samples )
{
    uint32_t i_size = 0;
    *pi_nb_samples = 0;

    if ( p_track->i_sample == p_track->i_sample_count )
        return 0;

    if ( p_track->fmt.i_cat != AUDIO_ES )
    {
        *pi_nb_samples = 1;

        if( p_track->i_sample_size == 0 )
            return p_track->p_sample_size[p_track->i_sample];
        else
            return p_track->i_sample_size;
    }
    else
    {
        const MP4_Box_data_sample_soun_t *p_soun = p_track->p_sample->data.p_sample_soun;
        const mp4_chunk_t *p_chunk = &p_track->chunk[p_track->i_chunk];
        uint32_t i_max_samples = p_chunk->i_sample_count - p_chunk->i_sample;


        if( p_track->fmt.i_original_fourcc == VLC_CODEC_DVD_LPCM &&
            p_soun->i_constLPCMframesperaudiopacket &&
            p_soun->i_constbytesperaudiopacket )
        {

            uint32_t i_packets = i_max_samples / p_soun->i_constLPCMframesperaudiopacket;
            if ( UINT32_MAX / p_soun->i_constbytesperaudiopacket < i_packets )
                i_packets = UINT32_MAX / p_soun->i_constbytesperaudiopacket;
            *pi_nb_samples = i_packets * p_soun->i_constLPCMframesperaudiopacket;
            return i_packets * p_soun->i_constbytesperaudiopacket;
        }

        if( p_track->fmt.i_original_fourcc == VLC_FOURCC('r','r','t','p') )
        {
            *pi_nb_samples = 1;
            return p_track->i_sample_size;
        }


        if( p_track->i_sample_size == 0 )
        {
            *pi_nb_samples = 1;
            return p_track->p_sample_size[p_track->i_sample];
        }

        if( p_soun->i_qt_version == 1 )
        {
            if ( p_soun->i_compressionid == 0xFFFE )
            {
                *pi_nb_samples = 1;
                if ( p_track->i_sample_size )
                    return p_track->i_sample_size;
                else
                    return p_track->p_sample_size[p_track->i_sample];
            }
            else if ( p_soun->i_compressionid != 0 || p_soun->i_bytes_per_sample > 1 )
            {


                *pi_nb_samples = i_max_samples;
                if( p_track->fmt.audio.i_blockalign > 1 )
                    *pi_nb_samples = p_soun->i_sample_per_packet;
                i_size = *pi_nb_samples / p_soun->i_sample_per_packet * p_soun->i_bytes_per_frame;
                return i_size;
            }
            else
            {
                uint32_t i_packets;
                if( p_track->fmt.audio.i_blockalign > 1 )
                    i_packets = 1;
                else
                    i_packets = i_max_samples / p_soun->i_sample_per_packet;

                if ( UINT32_MAX / p_soun->i_bytes_per_frame < i_packets )
                    i_packets = UINT32_MAX / p_soun->i_bytes_per_frame;

                *pi_nb_samples = i_packets * p_soun->i_sample_per_packet;
                i_size = i_packets * p_soun->i_bytes_per_frame;
                return i_size;
            }
        }




        if( p_soun->i_compressionid == 0 && p_track->i_sample_size == 1 )
        {
            switch( p_track->fmt.i_codec )
            {

                case 132:
                    *pi_nb_samples = 160 * p_track->fmt.audio.i_channels;
                    return 33 * p_track->fmt.audio.i_channels;
                case 136:
                    *pi_nb_samples = 64 * p_track->fmt.audio.i_channels;
                    return 34 * p_track->fmt.audio.i_channels;
                default:
                    break;
            }
        }


        uint32_t i_max_v0_samples;
        switch( p_track->fmt.i_codec )
        {

            case 135:
            case 134:
                i_max_v0_samples = 16;
                break;
            case 128:
            case 131:
            case 130:
            case 133:
            case 129:
            case 137:
                i_max_v0_samples = 1;
                break;

            default:

                i_max_v0_samples = p_track->fmt.audio.i_rate / 40 *
                                   p_track->fmt.audio.i_channels;
                if( i_max_v0_samples < 1 )
                    i_max_v0_samples = 1;
                break;
        }

        *pi_nb_samples = 0;
        for( uint32_t i=p_track->i_sample;
             i<p_chunk->i_sample_first+p_chunk->i_sample_count &&
             i<p_track->i_sample_count;
             i++ )
        {
            (*pi_nb_samples)++;
            if ( p_track->i_sample_size == 0 )
                i_size += p_track->p_sample_size[i];
            else
                i_size += MP4_GetFixedSampleSize( p_track, p_soun );


            if(p_soun->i_compressionid != 0)
            {

                break;
            }

            if ( *pi_nb_samples == i_max_v0_samples )
                break;
        }
    }


    return i_size;
}
