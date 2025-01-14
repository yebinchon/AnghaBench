
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hxxx_helper_nal {int dummy; } ;
struct TYPE_2__ {size_t i_sei_count; struct hxxx_helper_nal* sei_list; } ;
struct hxxx_helper {scalar_t__ i_codec; TYPE_1__ hevc; } ;


 size_t HXXX_HELPER_SEI_COUNT ;
 scalar_t__ VLC_CODEC_HEVC ;
 scalar_t__ helper_dup_buf (struct hxxx_helper_nal*,int const*,size_t) ;

__attribute__((used)) static void
helper_load_sei(struct hxxx_helper *hh, const uint8_t *p_nal, size_t i_nal)
{
    if(hh->i_codec != VLC_CODEC_HEVC)
        return;

    if(hh->hevc.i_sei_count == HXXX_HELPER_SEI_COUNT)
        return;

    struct hxxx_helper_nal *hnal = &hh->hevc.sei_list[hh->hevc.i_sei_count];
    if (helper_dup_buf(hnal, p_nal, i_nal))
        return;
    hh->hevc.i_sei_count++;
}
