
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef scalar_t__ vlc_fourcc_t ;
typedef int filter_t ;
struct TYPE_6__ {scalar_t__ i_format; } ;
typedef TYPE_1__ audio_sample_format_t ;


 int * FindConverter (int *,TYPE_1__*,TYPE_1__*) ;
 int aout_FormatPrepare (TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static filter_t *TryFormat (vlc_object_t *obj, vlc_fourcc_t codec,
                            audio_sample_format_t *restrict fmt)
{
    audio_sample_format_t output = *fmt;

    assert (codec != fmt->i_format);
    output.i_format = codec;
    aout_FormatPrepare (&output);

    filter_t *filter = FindConverter (obj, fmt, &output);
    if (filter != ((void*)0))
        *fmt = output;
    return filter;
}
