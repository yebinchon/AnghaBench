
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pic_sys_vaapi_instance {int dec_device; int num_render_targets; int render_targets; int va_dpy; int pic_refcount; struct pic_sys_vaapi_instance* instance; } ;
struct TYPE_3__ {struct pic_sys_vaapi_instance* p_sys; } ;
typedef TYPE_1__ picture_t ;
typedef struct pic_sys_vaapi_instance picture_sys_t ;


 int atomic_fetch_sub (int *,int) ;
 int free (struct pic_sys_vaapi_instance*) ;
 int vaDestroySurfaces (int ,int ,int ) ;
 int vlc_decoder_device_Release (int ) ;

__attribute__((used)) static void
pool_pic_destroy_cb(picture_t *pic)
{
    picture_sys_t *p_sys = pic->p_sys;
    struct pic_sys_vaapi_instance *instance = p_sys->instance;

    if (atomic_fetch_sub(&instance->pic_refcount, 1) == 1)
    {
        vaDestroySurfaces(instance->va_dpy, instance->render_targets,
                          instance->num_render_targets);
        vlc_decoder_device_Release(instance->dec_device);
        free(instance);
    }
    free(pic->p_sys);
}
