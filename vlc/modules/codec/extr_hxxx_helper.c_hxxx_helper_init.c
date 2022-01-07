
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef scalar_t__ vlc_fourcc_t ;
struct hxxx_helper {int b_need_xvcC; scalar_t__ i_codec; int * p_obj; } ;


 scalar_t__ VLC_CODEC_H264 ;
 scalar_t__ VLC_CODEC_HEVC ;
 int assert (int) ;
 int memset (struct hxxx_helper*,int ,int) ;

void
hxxx_helper_init(struct hxxx_helper *hh, vlc_object_t *p_obj,
                 vlc_fourcc_t i_codec, bool b_need_xvcC)
{
    assert(i_codec == VLC_CODEC_H264 || i_codec == VLC_CODEC_HEVC);

    memset(hh, 0, sizeof(struct hxxx_helper));
    hh->p_obj = p_obj;
    hh->i_codec = i_codec;
    hh->b_need_xvcC = b_need_xvcC;
}
