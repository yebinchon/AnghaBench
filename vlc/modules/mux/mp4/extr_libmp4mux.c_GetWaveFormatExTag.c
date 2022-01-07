
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int i_rate; int i_bitspersample; int i_blockalign; int i_channels; } ;
struct TYPE_5__ {int i_bitrate; int p_extra; int i_extra; TYPE_1__ audio; int i_codec; } ;
typedef TYPE_2__ es_format_t ;
typedef int bo_t ;


 int bo_add_16le (int *,int ) ;
 int bo_add_32le (int *,int) ;
 int bo_add_mem (int *,int ,int ) ;
 int * box_new (char const*) ;
 int fourcc_to_wf_tag (int ,int *) ;

__attribute__((used)) static bo_t *GetWaveFormatExTag(es_format_t *p_fmt, const char *tag)
{
    bo_t *box = box_new(tag);
    if(!box)
        return ((void*)0);

    uint16_t wFormatTag;
    fourcc_to_wf_tag(p_fmt->i_codec, &wFormatTag);
    bo_add_16le(box, wFormatTag);
    bo_add_16le(box, p_fmt->audio.i_channels);
    bo_add_32le(box, p_fmt->audio.i_rate);
    bo_add_32le(box, p_fmt->i_bitrate / 8);
    bo_add_16le(box, p_fmt->audio.i_blockalign);
    bo_add_16le(box, p_fmt->audio.i_bitspersample);
    bo_add_16le(box, p_fmt->i_extra);

    bo_add_mem(box, p_fmt->i_extra, p_fmt->p_extra);

    return box;
}
