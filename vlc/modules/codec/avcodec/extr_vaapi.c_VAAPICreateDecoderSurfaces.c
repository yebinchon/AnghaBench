
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vlc_va_t ;
struct TYPE_14__ {int display; } ;
struct TYPE_16__ {int render_targets; TYPE_3__ hw_ctx; } ;
typedef TYPE_5__ vlc_va_sys_t ;
struct TYPE_17__ {int i_visible_height; int i_visible_width; int i_chroma; } ;
typedef TYPE_6__ video_format_t ;
struct TYPE_12__ {int i; } ;
struct TYPE_13__ {TYPE_1__ value; int type; } ;
struct TYPE_18__ {TYPE_2__ value; int flags; int type; } ;
typedef TYPE_7__ VASurfaceAttrib ;


 int VAGenericValueTypeInteger ;
 int VASurfaceAttribPixelFormat ;
 int VA_CALL (int ,int ,int ,unsigned int,int ,int ,int ,size_t,TYPE_7__*,int) ;
 int VA_SURFACE_ATTRIB_SETTABLE ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_4__*) ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int) ;
 int vaCreateSurfaces ;
 int vlc_chroma_to_vaapi (int ,unsigned int*,int*) ;

__attribute__((used)) static int VAAPICreateDecoderSurfaces(vlc_va_t *va, int codec_id,
                                      const video_format_t *fmt,
                                      size_t count)
{
    VLC_UNUSED(codec_id);
    vlc_va_sys_t *sys = va->sys;

    unsigned va_rt_format;
    int va_fourcc;
    vlc_chroma_to_vaapi(fmt->i_chroma, &va_rt_format, &va_fourcc);

    VASurfaceAttrib fourcc_attribs[1] = {
        {
            .type = VASurfaceAttribPixelFormat,
            .flags = VA_SURFACE_ATTRIB_SETTABLE,
            .value.type = VAGenericValueTypeInteger,
            .value.value.i = va_fourcc,
        }
    };

    VA_CALL(VLC_OBJECT(va), vaCreateSurfaces, sys->hw_ctx.display, va_rt_format,
            fmt->i_visible_width, fmt->i_visible_height,
            sys->render_targets, count,
            fourcc_attribs, 1);

    return VLC_SUCCESS;
error:
    return VLC_EGENERIC;
}
