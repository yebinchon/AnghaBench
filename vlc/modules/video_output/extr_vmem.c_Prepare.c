
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fmt; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_9__ {int pic_opaque; int opaque; int (* unlock ) (int ,int ,void**) ;int * pitches; int * lines; int (* lock ) (int ,void**) ;} ;
typedef TYPE_3__ vout_display_sys_t ;
typedef int vlc_tick_t ;
typedef int subpicture_t ;
typedef int picture_t ;
struct TYPE_10__ {TYPE_1__* p; int * p_sys; } ;
typedef TYPE_4__ picture_resource_t ;
struct TYPE_7__ {int i_pitch; int i_lines; void* p_pixels; } ;


 int PICTURE_PLANE_MAX ;
 int VLC_UNUSED (int ) ;
 scalar_t__ likely (int ) ;
 int picture_CopyPixels (int *,int *) ;
 int * picture_NewFromResource (int *,TYPE_4__*) ;
 int picture_Release (int *) ;
 int stub1 (int ,void**) ;
 int stub2 (int ,int ,void**) ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *pic, subpicture_t *subpic,
                    vlc_tick_t date)
{
    VLC_UNUSED(date);
    vout_display_sys_t *sys = vd->sys;
    picture_resource_t rsc = { .p_sys = ((void*)0) };
    void *planes[PICTURE_PLANE_MAX];

    sys->pic_opaque = sys->lock(sys->opaque, planes);

    for (unsigned i = 0; i < PICTURE_PLANE_MAX; i++) {
        rsc.p[i].p_pixels = planes[i];
        rsc.p[i].i_lines = sys->lines[i];
        rsc.p[i].i_pitch = sys->pitches[i];
    }

    picture_t *locked = picture_NewFromResource(&vd->fmt, &rsc);
    if (likely(locked != ((void*)0))) {
        picture_CopyPixels(locked, pic);
        picture_Release(locked);
    }

    if (sys->unlock != ((void*)0))
        sys->unlock(sys->opaque, sys->pic_opaque, planes);

    (void) subpic;
}
