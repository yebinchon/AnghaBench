
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_decoder_device ;
struct TYPE_17__ {int i_visible_height; int i_visible_width; int i_chroma; } ;
typedef TYPE_6__ video_format_t ;
struct TYPE_14__ {int copy; int destroy; } ;
struct TYPE_15__ {void* va_dpy; int surface; TYPE_3__ s; } ;
struct TYPE_16__ {int * picref; TYPE_4__ ctx; } ;
struct pic_sys_vaapi_instance {unsigned int num_render_targets; int * render_targets; void* va_dpy; int dec_device; int pic_refcount; TYPE_5__ ctx; struct pic_sys_vaapi_instance* instance; } ;
typedef int picture_t ;
typedef struct pic_sys_vaapi_instance picture_sys_t ;
struct TYPE_18__ {int pf_destroy; struct pic_sys_vaapi_instance* p_sys; } ;
typedef TYPE_7__ picture_resource_t ;
typedef int picture_pool_t ;
typedef int VASurfaceID ;
struct TYPE_12__ {int i; } ;
struct TYPE_13__ {TYPE_1__ value; int type; } ;
struct TYPE_19__ {TYPE_2__ value; int flags; int type; } ;
typedef TYPE_8__ VASurfaceAttrib ;
typedef void* VADisplay ;


 int VAGenericValueTypeInteger ;
 int VASurfaceAttribPixelFormat ;
 int VA_CALL (int *,int ,void*,unsigned int,unsigned int,...) ;
 int VA_SURFACE_ATTRIB_SETTABLE ;
 int atomic_init (int *,int ) ;
 int atomic_store (int *,unsigned int) ;
 int free (struct pic_sys_vaapi_instance*) ;
 struct pic_sys_vaapi_instance* malloc (int) ;
 int pic_ctx_copy_cb ;
 int pic_sys_ctx_destroy_cb ;
 int * picture_NewFromResource (TYPE_6__ const*,TYPE_7__*) ;
 int picture_Release (int *) ;
 int * picture_pool_New (unsigned int,int **) ;
 int pool_pic_destroy_cb ;
 int vaCreateSurfaces ;
 int vaDestroySurfaces ;
 int vlc_chroma_to_vaapi (int ,unsigned int*,int*) ;
 int vlc_decoder_device_Hold (int *) ;

picture_pool_t *
vlc_vaapi_PoolNew(vlc_object_t *o, vlc_decoder_device *dec_device,
                  VADisplay dpy, unsigned count, VASurfaceID **render_targets,
                  const video_format_t *restrict fmt, bool b_force_fourcc)
{
    unsigned va_rt_format;
    int va_fourcc;
    vlc_chroma_to_vaapi(fmt->i_chroma, &va_rt_format, &va_fourcc);

    struct pic_sys_vaapi_instance *instance =
        malloc(sizeof(*instance) + count * sizeof(VASurfaceID));
    if (!instance)
        return ((void*)0);
    instance->num_render_targets = count;
    atomic_init(&instance->pic_refcount, 0);

    VASurfaceAttrib *attribs = ((void*)0);
    unsigned num_attribs = 0;
    VASurfaceAttrib fourcc_attribs[1] = {
        {
            .type = VASurfaceAttribPixelFormat,
            .flags = VA_SURFACE_ATTRIB_SETTABLE,
            .value.type = VAGenericValueTypeInteger,
            .value.value.i = b_force_fourcc ? va_fourcc : 0,
        }
    };
    if (b_force_fourcc)
    {
        attribs = fourcc_attribs;
        num_attribs = 1;
    }

    picture_t *pics[count];

    VA_CALL(o, vaCreateSurfaces, dpy, va_rt_format,
            fmt->i_visible_width, fmt->i_visible_height,
            instance->render_targets, instance->num_render_targets,
            attribs, num_attribs);

    for (unsigned i = 0; i < count; i++)
    {
        picture_sys_t *p_sys = malloc(sizeof *p_sys);
        if (p_sys == ((void*)0))
        {
            count = i;
            goto error_pic;
        }
        p_sys->instance = instance;
        p_sys->ctx.ctx.s.destroy = pic_sys_ctx_destroy_cb;
        p_sys->ctx.ctx.s.copy = pic_ctx_copy_cb;
        p_sys->ctx.ctx.surface = instance->render_targets[i];
        p_sys->ctx.ctx.va_dpy = dpy;
        p_sys->ctx.picref = ((void*)0);
        picture_resource_t rsc = {
            .p_sys = p_sys,
            .pf_destroy = pool_pic_destroy_cb,
        };
        pics[i] = picture_NewFromResource(fmt, &rsc);
        if (pics[i] == ((void*)0))
        {
            free(p_sys);
            count = i;
            goto error_pic;
        }
    }

    picture_pool_t *pool = picture_pool_New(count, pics);
    if (!pool)
        goto error_pic;

    atomic_store(&instance->pic_refcount, count);
    instance->va_dpy = dpy;
    instance->dec_device = vlc_decoder_device_Hold(dec_device);

    *render_targets = instance->render_targets;
    return pool;

error_pic:
    while (count > 0)
        picture_Release(pics[--count]);

    VA_CALL(o, vaDestroySurfaces, instance->va_dpy, instance->render_targets,
            instance->num_render_targets);

error:
    free(instance);
    return ((void*)0);
}
