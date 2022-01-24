#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;
struct TYPE_17__ {int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_visible_width; int /*<<< orphan*/  i_chroma; } ;
typedef  TYPE_6__ video_format_t ;
struct TYPE_14__ {int /*<<< orphan*/  copy; int /*<<< orphan*/  destroy; } ;
struct TYPE_15__ {void* va_dpy; int /*<<< orphan*/  surface; TYPE_3__ s; } ;
struct TYPE_16__ {int /*<<< orphan*/ * picref; TYPE_4__ ctx; } ;
struct pic_sys_vaapi_instance {unsigned int num_render_targets; int /*<<< orphan*/ * render_targets; void* va_dpy; int /*<<< orphan*/  dec_device; int /*<<< orphan*/  pic_refcount; TYPE_5__ ctx; struct pic_sys_vaapi_instance* instance; } ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  struct pic_sys_vaapi_instance picture_sys_t ;
struct TYPE_18__ {int /*<<< orphan*/  pf_destroy; struct pic_sys_vaapi_instance* p_sys; } ;
typedef  TYPE_7__ picture_resource_t ;
typedef  int /*<<< orphan*/  picture_pool_t ;
typedef  int /*<<< orphan*/  VASurfaceID ;
struct TYPE_12__ {int i; } ;
struct TYPE_13__ {TYPE_1__ value; int /*<<< orphan*/  type; } ;
struct TYPE_19__ {TYPE_2__ value; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_8__ VASurfaceAttrib ;
typedef  void* VADisplay ;

/* Variables and functions */
 int /*<<< orphan*/  VAGenericValueTypeInteger ; 
 int /*<<< orphan*/  VASurfaceAttribPixelFormat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  VA_SURFACE_ATTRIB_SETTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pic_sys_vaapi_instance*) ; 
 struct pic_sys_vaapi_instance* FUNC4 (int) ; 
 int /*<<< orphan*/  pic_ctx_copy_cb ; 
 int /*<<< orphan*/  pic_sys_ctx_destroy_cb ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_6__ const*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  pool_pic_destroy_cb ; 
 int /*<<< orphan*/  vaCreateSurfaces ; 
 int /*<<< orphan*/  vaDestroySurfaces ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

picture_pool_t *
FUNC10(vlc_object_t *o, vlc_decoder_device *dec_device,
                  VADisplay dpy, unsigned count, VASurfaceID **render_targets,
                  const video_format_t *restrict fmt, bool b_force_fourcc)
{
    unsigned va_rt_format;
    int va_fourcc;
    FUNC8(fmt->i_chroma, &va_rt_format, &va_fourcc);

    struct pic_sys_vaapi_instance *instance =
        FUNC4(sizeof(*instance) + count * sizeof(VASurfaceID));
    if (!instance)
        return NULL;
    instance->num_render_targets = count;
    FUNC1(&instance->pic_refcount, 0);

    VASurfaceAttrib *attribs = NULL;
    unsigned num_attribs = 0;
    VASurfaceAttrib fourcc_attribs[1] = {
        {
            .type = VASurfaceAttribPixelFormat,
            .flags = VA_SURFACE_ATTRIB_SETTABLE,
            .value.type    = VAGenericValueTypeInteger,
            .value.value.i = b_force_fourcc ? va_fourcc : 0,
        }
    };
    if (b_force_fourcc)
    {
        attribs = fourcc_attribs;
        num_attribs = 1;
    }

    picture_t *pics[count];

    FUNC0(o, vaCreateSurfaces, dpy, va_rt_format,
            fmt->i_visible_width, fmt->i_visible_height,
            instance->render_targets, instance->num_render_targets,
            attribs, num_attribs);

    for (unsigned i = 0; i < count; i++)
    {
        picture_sys_t *p_sys = FUNC4(sizeof *p_sys);
        if (p_sys == NULL)
        {
            count = i;
            goto error_pic;
        }
        p_sys->instance = instance;
        p_sys->ctx.ctx.s.destroy = pic_sys_ctx_destroy_cb;
        p_sys->ctx.ctx.s.copy = pic_ctx_copy_cb;
        p_sys->ctx.ctx.surface = instance->render_targets[i];
        p_sys->ctx.ctx.va_dpy = dpy;
        p_sys->ctx.picref = NULL;
        picture_resource_t rsc = {
            .p_sys = p_sys,
            .pf_destroy = pool_pic_destroy_cb,
        };
        pics[i] = FUNC5(fmt, &rsc);
        if (pics[i] == NULL)
        {
            FUNC3(p_sys);
            count = i;
            goto error_pic;
        }
    }

    picture_pool_t *pool = FUNC7(count, pics);
    if (!pool)
        goto error_pic;

    FUNC2(&instance->pic_refcount, count);
    instance->va_dpy = dpy;
    instance->dec_device = FUNC9(dec_device);

    *render_targets = instance->render_targets;
    return pool;

error_pic:
    while (count > 0)
        FUNC6(pics[--count]);

    FUNC0(o, vaDestroySurfaces, instance->va_dpy, instance->render_targets,
            instance->num_render_targets);

error:
    FUNC3(instance);
    return NULL;
}