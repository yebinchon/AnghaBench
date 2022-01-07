
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* p_window; } ;
typedef TYPE_4__ vout_display_sys_t ;
typedef int video_format_t ;
typedef int picture_t ;
struct TYPE_14__ {TYPE_4__* p_vd_sys; } ;
struct TYPE_13__ {int b_vd_ref; int i_index; int lock; int p_jsurface; int p_surface; } ;
struct TYPE_16__ {TYPE_3__ sw; TYPE_2__ hw; } ;
typedef TYPE_5__ picture_sys_t ;
struct TYPE_17__ {int pf_destroy; TYPE_5__* p_sys; } ;
typedef TYPE_6__ picture_resource_t ;
struct TYPE_12__ {int p_jsurface; int p_surface; } ;


 int AndroidOpaquePicture_DetachVout ;
 int AndroidPicture_Destroy ;
 TYPE_5__* calloc (int,int) ;
 int free (TYPE_5__*) ;
 int memset (TYPE_6__*,int ,int) ;
 int * picture_NewFromResource (int *,TYPE_6__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static picture_t *PictureAlloc(vout_display_sys_t *sys, video_format_t *fmt,
                               bool b_opaque)
{
    picture_t *p_pic;
    picture_resource_t rsc;
    picture_sys_t *p_picsys = calloc(1, sizeof(*p_picsys));

    if (unlikely(p_picsys == ((void*)0)))
        return ((void*)0);


    memset(&rsc, 0, sizeof(picture_resource_t));
    rsc.p_sys = p_picsys;

    if (b_opaque)
    {
        p_picsys->hw.b_vd_ref = 1;
        p_picsys->hw.p_surface = sys->p_window->p_surface;
        p_picsys->hw.p_jsurface = sys->p_window->p_jsurface;
        p_picsys->hw.i_index = -1;
        vlc_mutex_init(&p_picsys->hw.lock);
        rsc.pf_destroy = AndroidOpaquePicture_DetachVout;
    }
    else
    {
        p_picsys->sw.p_vd_sys = sys;
        rsc.pf_destroy = AndroidPicture_Destroy;
    }

    p_pic = picture_NewFromResource(fmt, &rsc);
    if (!p_pic)
    {
        free(p_picsys);
        return ((void*)0);
    }
    return p_pic;
}
