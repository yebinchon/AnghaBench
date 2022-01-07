
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_cat; int audio; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_7__ {int out; } ;
typedef TYPE_2__ demux_t ;


 scalar_t__ AUDIO_ES ;
 int aout_FormatPrepare (int *) ;
 void* es_out_Add (int ,TYPE_1__*) ;

void *codec_init (demux_t *demux, es_format_t *fmt)
{
    if (fmt->i_cat == AUDIO_ES)
        aout_FormatPrepare (&fmt->audio);
    return es_out_Add (demux->out, fmt);
}
