
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int i_rate; } ;
struct TYPE_8__ {int i_extra; int i_codec; int i_original_fourcc; int i_cat; scalar_t__ p_extra; TYPE_2__ audio; } ;
struct TYPE_9__ {unsigned int i_samples_count; int i_read_duration; TYPE_3__ fmt; int i_track_id; TYPE_1__* samples; } ;
typedef TYPE_4__ mp4mux_trackinfo_t ;
typedef scalar_t__ int64_t ;
typedef int bo_t ;
struct TYPE_6__ {scalar_t__ i_size; int i_length; } ;



 int CLOCK_FREQ ;
 int bo_add_16be (int *,int ) ;
 int bo_add_24be (int *,int) ;
 int bo_add_32be (int *,scalar_t__) ;
 int bo_add_8 (int *,int) ;
 int bo_add_mp4_tag_descr (int *,int,int) ;
 int * box_full_new (char*,int ,int ) ;

__attribute__((used)) static bo_t *GetESDS(mp4mux_trackinfo_t *p_track)
{
    bo_t *esds;


    int i_decoder_specific_info_size = (p_track->fmt.i_extra > 0) ? 5 + p_track->fmt.i_extra : 0;

    esds = box_full_new("esds", 0, 0);
    if(!esds)
        return ((void*)0);


    int64_t i_bitrate_avg = 0;
    int64_t i_bitrate_max = 0;

    for (unsigned i = 0; i < p_track->i_samples_count; i++) {
        i_bitrate_avg += p_track->samples[i].i_size;
        if (p_track->samples[i].i_length > 0) {
            int64_t i_bitrate = CLOCK_FREQ * 8 * p_track->samples[i].i_size / p_track->samples[i].i_length;
            if (i_bitrate > i_bitrate_max)
                i_bitrate_max = i_bitrate;
        }
    }

    if (p_track->i_read_duration > 0)
        i_bitrate_avg = CLOCK_FREQ * 8 * i_bitrate_avg / p_track->i_read_duration;
    else
        i_bitrate_avg = 0;
    if (i_bitrate_max <= 1)
        i_bitrate_max = 0x7fffffff;


    bo_add_mp4_tag_descr(esds, 0x03, 3 + 5 + 13 + i_decoder_specific_info_size + 5 + 1);
    bo_add_16be(esds, p_track->i_track_id);
    bo_add_8 (esds, 0x1f);



    bo_add_mp4_tag_descr(esds, 0x04, 13 + i_decoder_specific_info_size);

    uint8_t i_object_profile_indication;
    switch(p_track->fmt.i_codec)
    {
    case 130:
        i_object_profile_indication = 0x20;
        break;
    case 128:
        if(p_track->fmt.i_original_fourcc == 134)
        {
            i_object_profile_indication = 0x6a;
            break;
        }

    case 133:

        i_object_profile_indication = 0x61;
        break;
    case 134:
        i_object_profile_indication = 0x6a;
        break;
    case 131:

        i_object_profile_indication = 0x40;
        break;
    case 132:
    case 129:
        i_object_profile_indication =
            p_track->fmt.audio.i_rate < 32000 ? 0x69
                                              : 0x6b;
        break;
    case 135:
        i_object_profile_indication = 0xa9;
        break;
    default:
        i_object_profile_indication = 0xFE;
        break;
    }

    uint8_t i_stream_type;
    switch(p_track->fmt.i_cat)
    {
        case 136:
            i_stream_type = 0x04;
            break;
        case 138:
            i_stream_type = 0x05;
            break;
        case 137:
            i_stream_type = 0x0D;
            break;
        default:
            i_stream_type = 0x20;
            break;
    }

    bo_add_8 (esds, i_object_profile_indication);
    bo_add_8 (esds, (i_stream_type << 2) | 1);
    bo_add_24be(esds, 1024 * 1024);
    bo_add_32be(esds, i_bitrate_max);
    bo_add_32be(esds, i_bitrate_avg);

    if (p_track->fmt.i_extra > 0) {

        bo_add_mp4_tag_descr(esds, 0x05, p_track->fmt.i_extra);

        for (int i = 0; i < p_track->fmt.i_extra; i++)
            bo_add_8(esds, ((uint8_t*)p_track->fmt.p_extra)[i]);
    }


    bo_add_mp4_tag_descr(esds, 0x06, 1);
    bo_add_8 (esds, 0x02);

    return esds;
}
