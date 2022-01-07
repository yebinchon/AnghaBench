
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_video_context ;
struct vlc_va_t {int dummy; } ;
typedef struct vlc_va_t vlc_va_t ;
typedef int vlc_object_t ;
typedef int vlc_decoder_device ;
typedef int video_format_t ;
typedef int es_format_t ;
typedef int AVPixFmtDescriptor ;
typedef int AVCodecContext ;


 scalar_t__ unlikely (int ) ;
 int * vlc_module_load (struct vlc_va_t*,char*,int *,int,int ,struct vlc_va_t*,int *,int const*,int const*,int *,int *,int **) ;
 struct vlc_va_t* vlc_object_create (int *,int) ;
 int vlc_object_delete (struct vlc_va_t*) ;
 int vlc_va_Start ;

vlc_va_t *vlc_va_New(vlc_object_t *obj,
                     AVCodecContext *avctx, const AVPixFmtDescriptor *src_desc,
                     const es_format_t *fmt_in, vlc_decoder_device *device,
                     video_format_t *fmt_out, vlc_video_context **vtcx_out)
{
    struct vlc_va_t *va = vlc_object_create(obj, sizeof (*va));
    if (unlikely(va == ((void*)0)))
        return ((void*)0);


    if (vlc_module_load(va, "hw decoder", ((void*)0), 1,
                        vlc_va_Start, va, avctx, src_desc, fmt_in, device,
                        fmt_out, vtcx_out) == ((void*)0))
    {
        vlc_object_delete(va);
        va = ((void*)0);
    }

    return va;
}
