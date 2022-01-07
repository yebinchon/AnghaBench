
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int i_bits_per_pixel; } ;
struct TYPE_8__ {int i_codec; TYPE_1__ video; } ;
struct TYPE_10__ {TYPE_2__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ encoder_t ;
struct TYPE_11__ {TYPE_3__* p_format; } ;
typedef TYPE_5__ encoder_sys_t ;
struct TYPE_9__ {int chroma_format; } ;


 int SCHRO_CHROMA_420 ;
 int SCHRO_CHROMA_422 ;
 int SCHRO_CHROMA_444 ;




__attribute__((used)) static bool SetEncChromaFormat( encoder_t *p_enc, uint32_t i_codec )
{
    encoder_sys_t *p_sys = p_enc->p_sys;

    switch( i_codec ) {
    case 130:
        p_enc->fmt_in.i_codec = i_codec;
        p_enc->fmt_in.video.i_bits_per_pixel = 12;
        p_sys->p_format->chroma_format = SCHRO_CHROMA_420;
           break;
    case 129:
        p_enc->fmt_in.i_codec = i_codec;
        p_enc->fmt_in.video.i_bits_per_pixel = 16;
        p_sys->p_format->chroma_format = SCHRO_CHROMA_422;
        break;
    case 128:
        p_enc->fmt_in.i_codec = i_codec;
        p_enc->fmt_in.video.i_bits_per_pixel = 24;
        p_sys->p_format->chroma_format = SCHRO_CHROMA_444;
        break;
    default:
        return 0;
    }

    return 1;
}
