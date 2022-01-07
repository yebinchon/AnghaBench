
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int i_bitspersample; } ;
struct TYPE_7__ {scalar_t__ i_codec; TYPE_4__ audio; } ;
struct TYPE_6__ {int * pf_audio_filter; TYPE_2__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_1__ filter_t ;
typedef TYPE_2__ es_format_t ;


 int AOUT_FMTS_SIMILAR (TYPE_4__*,TYPE_4__*) ;
 int * FindConversion (scalar_t__,scalar_t__) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (TYPE_1__*,char*,char*,char*,int ,int ) ;

__attribute__((used)) static int Open(vlc_object_t *object)
{
    filter_t *filter = (filter_t *)object;

    const es_format_t *src = &filter->fmt_in;
    es_format_t *dst = &filter->fmt_out;

    if (!AOUT_FMTS_SIMILAR(&src->audio, &dst->audio))
        return VLC_EGENERIC;
    if (src->i_codec == dst->i_codec)
        return VLC_EGENERIC;

    filter->pf_audio_filter = FindConversion(src->i_codec, dst->i_codec);
    if (filter->pf_audio_filter == ((void*)0))
        return VLC_EGENERIC;

    msg_Dbg(filter, "%4.4s->%4.4s, bits per sample: %i->%i",
            (char *)&src->i_codec, (char *)&dst->i_codec,
            src->audio.i_bitspersample, dst->audio.i_bitspersample);
    return VLC_SUCCESS;
}
