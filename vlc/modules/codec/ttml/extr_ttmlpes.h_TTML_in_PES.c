
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_codec; } ;
struct TYPE_5__ {TYPE_1__ fmt_in; } ;
typedef TYPE_2__ decoder_t ;


 scalar_t__ VLC_CODEC_TTML_TS ;

__attribute__((used)) static inline bool TTML_in_PES(decoder_t *p_dec)
{
    return p_dec->fmt_in.i_codec == VLC_CODEC_TTML_TS;
}
