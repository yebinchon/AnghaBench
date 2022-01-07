
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_bitspersample; int i_blockalign; int i_rate; int i_channels; } ;
struct TYPE_8__ {int i_bitrate; scalar_t__ i_extra; int p_extra; TYPE_1__ audio; int i_codec; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_7__ {int nAvgBytesPerSec; int wBitsPerSample; int nBlockAlign; int nSamplesPerSec; int nChannels; int wFormatTag; } ;
struct TYPE_9__ {scalar_t__ i_extra; int p_extra; TYPE_2__ Format; } ;
typedef int MP4_Box_t ;


 TYPE_5__* BOXDATA (int const*) ;
 int malloc (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int wf_tag_to_fourcc (int ,int *,int *) ;

__attribute__((used)) static bool SetupAudioFromWaveFormatEx( es_format_t *p_fmt, const MP4_Box_t *p_WMA2 )
{
    if( p_WMA2 && BOXDATA(p_WMA2) )
    {
        wf_tag_to_fourcc(BOXDATA(p_WMA2)->Format.wFormatTag, &p_fmt->i_codec, ((void*)0));
        p_fmt->audio.i_channels = BOXDATA(p_WMA2)->Format.nChannels;
        p_fmt->audio.i_rate = BOXDATA(p_WMA2)->Format.nSamplesPerSec;
        p_fmt->i_bitrate = BOXDATA(p_WMA2)->Format.nAvgBytesPerSec * 8;
        p_fmt->audio.i_blockalign = BOXDATA(p_WMA2)->Format.nBlockAlign;
        p_fmt->audio.i_bitspersample = BOXDATA(p_WMA2)->Format.wBitsPerSample;
        p_fmt->i_extra = BOXDATA(p_WMA2)->i_extra;
        if( p_fmt->i_extra > 0 )
        {
            p_fmt->p_extra = malloc( BOXDATA(p_WMA2)->i_extra );
            memcpy( p_fmt->p_extra, BOXDATA(p_WMA2)->p_extra, p_fmt->i_extra );
        }
        return 1;
    }
    return 0;
}
