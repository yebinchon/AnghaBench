
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_va_t ;
struct TYPE_9__ {int i_width; int i_height; int i_frame_rate_base; int i_frame_rate; } ;
typedef TYPE_2__ video_format_t ;
typedef int es_format_t ;
typedef int directx_va_mode_t ;
typedef int directx_sys_t ;
struct TYPE_8__ {int den; int num; } ;
struct TYPE_10__ {int codec_id; int active_thread_type; int coded_width; int coded_height; TYPE_1__ framerate; scalar_t__ thread_count; } ;
typedef int AVPixFmtDescriptor ;
typedef TYPE_3__ AVCodecContext ;


 int ALIGN (int,int) ;




 int FF_THREAD_FRAME ;
 int * FindVideoServiceConversion (int *,int const*,int const*,TYPE_2__*,TYPE_3__ const*,int const*) ;
 int assert (int) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*,int,int,int,int) ;

const directx_va_mode_t *directx_va_Setup(vlc_va_t *va, const directx_sys_t *dx_sys,
                     const AVCodecContext *avctx, const AVPixFmtDescriptor *desc,
                     const es_format_t *fmt, int flag_xbox,
                     video_format_t *fmt_out, unsigned *surfaces)
{
    int surface_alignment = 16;
    unsigned surface_count = 2;

    switch ( avctx->codec_id )
    {
    case 129:


        surface_alignment = 32;
        surface_count += 2 + 2;

        break;
    case 130:



        if (flag_xbox)
            surface_alignment = 16;
        else
            surface_alignment = 128;
        surface_count += 16;
        break;
    case 131:
        surface_count += 16 + 2;
        break;
    case 128:
        surface_count += 8 + 1;
        break;
    default:
        surface_count += 2;
    }

    if ( avctx->active_thread_type & FF_THREAD_FRAME )
        surface_count += avctx->thread_count;

    if (avctx->coded_width <= 0 || avctx->coded_height <= 0)
        return ((void*)0);

    assert((surface_alignment & (surface_alignment - 1)) == 0);

    int surface_width = (((avctx->coded_width) + ((surface_alignment) - 1)) & ~((surface_alignment) - 1));
    int surface_height = (((avctx->coded_height) + ((surface_alignment) - 1)) & ~((surface_alignment) - 1));

    if (avctx->coded_width != surface_width || avctx->coded_height != surface_height)
        msg_Warn( va, "surface dimensions (%dx%d) differ from avcodec dimensions (%dx%d)",
                  surface_width, surface_height,
                  avctx->coded_width, avctx->coded_height);

    fmt_out->i_width = surface_width;
    fmt_out->i_height = surface_height;


    fmt_out->i_frame_rate = avctx->framerate.num;
    fmt_out->i_frame_rate_base = avctx->framerate.den;


    const directx_va_mode_t *res = FindVideoServiceConversion(va, dx_sys, fmt, fmt_out, avctx, desc);
    if (res == ((void*)0)) {
        msg_Err(va, "FindVideoServiceConversion failed");
        return ((void*)0);
    }
    *surfaces = surface_count;
    return res;
}
