
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef scalar_t__ vlc_fourcc_t ;
typedef int uint8_t ;
struct TYPE_9__ {int i_channels; int i_bitspersample; int i_rate; int i_frame_length; } ;
struct TYPE_12__ {scalar_t__ i_codec; size_t i_extra; int * p_extra; TYPE_1__ audio; } ;
struct TYPE_10__ {size_t i_data; int * p_data; } ;
struct TYPE_11__ {TYPE_5__ fmt; TYPE_2__ sample_priv; } ;
typedef TYPE_3__ mp4mux_trackinfo_t ;
typedef int bo_t ;


 int * GetDamrTag (TYPE_5__*) ;
 int * GetESDS (TYPE_3__*) ;
 int * GetWaveFormatExTag (TYPE_5__*,char*) ;
 int * GetWaveTag (TYPE_3__*) ;
 int * GetxxxxTag (int const*,size_t,char*) ;
 scalar_t__ VLC_CODEC_A52 ;
 scalar_t__ VLC_CODEC_AMR_NB ;
 scalar_t__ VLC_CODEC_DTS ;
 scalar_t__ VLC_CODEC_EAC3 ;
 scalar_t__ VLC_CODEC_MP3 ;
 scalar_t__ VLC_CODEC_MP4A ;
 scalar_t__ VLC_CODEC_MPGA ;
 scalar_t__ VLC_CODEC_WMAP ;
 int VLC_UNUSED (int *) ;
 int bo_add_16be (int *,int) ;
 int bo_add_32be (int *,int) ;
 int bo_add_8 (int *,int ) ;
 int box_gather (int *,int *) ;
 int * box_new (char*) ;
 int memcpy (char*,char*,int) ;
 int vlc_fourcc_to_char (scalar_t__,char*) ;

__attribute__((used)) static bo_t *GetSounBox(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov)
{
    VLC_UNUSED(p_obj);

    bool b_descr = 1;
    vlc_fourcc_t codec = p_track->fmt.i_codec;
    char fcc[4];

    if (codec == VLC_CODEC_MPGA ||
        codec == VLC_CODEC_MP3) {
        if (b_mov) {
            b_descr = 0;
            memcpy(fcc, ".mp3", 4);
        } else
            memcpy(fcc, "mp4a", 4);
    } else if (codec == VLC_CODEC_A52) {
        memcpy(fcc, "ac-3", 4);
    } else if (codec == VLC_CODEC_EAC3) {
        memcpy(fcc, "ec-3", 4);
    } else if (codec == VLC_CODEC_DTS) {
        memcpy(fcc, "DTS ", 4);
    } else if (codec == VLC_CODEC_WMAP) {
        memcpy(fcc, "wma ", 4);
    } else
        vlc_fourcc_to_char(codec, fcc);

    bo_t *soun = box_new(fcc);
    if(!soun)
        return ((void*)0);
    for (int i = 0; i < 6; i++)
        bo_add_8(soun, 0);
    bo_add_16be(soun, 1);


    if (b_mov && codec == VLC_CODEC_MP4A)
        bo_add_16be(soun, 1);
    else
        bo_add_16be(soun, 0);
    bo_add_16be(soun, 0);
    bo_add_32be(soun, 0);

    bo_add_16be(soun, p_track->fmt.audio.i_channels);

    bo_add_16be(soun, p_track->fmt.audio.i_bitspersample ?
                 p_track->fmt.audio.i_bitspersample : 16);
    bo_add_16be(soun, -2);
    bo_add_16be(soun, 0);
    bo_add_16be(soun, p_track->fmt.audio.i_rate);
    bo_add_16be(soun, 0);


    if (b_mov && p_track->fmt.i_codec == VLC_CODEC_MP4A) {

        bo_add_32be(soun, p_track->fmt.audio.i_frame_length);
        bo_add_32be(soun, 1536);
        bo_add_32be(soun, 2);

        bo_add_32be(soun, 2 );
    }


    if (b_descr) {
        bo_t *box;


        const uint8_t *p_extradata = p_track->fmt.p_extra;
        size_t i_extradata = p_track->fmt.i_extra;
        if(p_track->sample_priv.i_data)
        {
            p_extradata = p_track->sample_priv.p_data;
            i_extradata = p_track->sample_priv.i_data;
        }

        if (b_mov && codec == VLC_CODEC_MP4A)
            box = GetWaveTag(p_track);
        else if (codec == VLC_CODEC_AMR_NB)
            box = GetDamrTag(&p_track->fmt);
        else if (codec == VLC_CODEC_A52 && i_extradata >= 3)
            box = GetxxxxTag(p_extradata, i_extradata, "dac3");
        else if (codec == VLC_CODEC_EAC3 && i_extradata >= 5)
            box = GetxxxxTag(p_extradata, i_extradata, "dec3");
        else if (codec == VLC_CODEC_WMAP)
            box = GetWaveFormatExTag(&p_track->fmt, "wfex");
        else
            box = GetESDS(p_track);

        if (box)
            box_gather(soun, box);
    }

    return soun;
}
