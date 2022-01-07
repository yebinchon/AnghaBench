
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int i_codec; } ;
struct TYPE_6__ {scalar_t__ i_codec; } ;
struct TYPE_4__ {TYPE_2__ fmt_out; TYPE_3__ fmt_in; int pf_decode; } ;
typedef TYPE_1__ decoder_t ;


 int Decode ;
 int VLC_CODEC_RGB32 ;
 scalar_t__ VLC_CODEC_XWD ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_format_Copy (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    decoder_t *dec = (decoder_t *)obj;

    if (dec->fmt_in.i_codec != VLC_CODEC_XWD)
        return VLC_EGENERIC;

    dec->pf_decode = Decode;
    es_format_Copy(&dec->fmt_out, &dec->fmt_in);
    dec->fmt_out.i_codec = VLC_CODEC_RGB32;
    return VLC_SUCCESS;
}
