
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int fmt; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_12__ {int * pool; scalar_t__ picture; int stride; int height; scalar_t__* offsets; scalar_t__* map; } ;
typedef TYPE_3__ vout_display_sys_t ;
typedef int rsc ;
struct TYPE_13__ {TYPE_3__* p_voutsys; } ;
typedef TYPE_4__ picture_sys_t ;
struct TYPE_14__ {int pf_destroy; TYPE_4__* p_sys; TYPE_1__* p; } ;
typedef TYPE_5__ picture_resource_t ;
typedef int picture_pool_t ;
struct TYPE_10__ {int i_pitch; int i_lines; scalar_t__ p_pixels; } ;


 int CustomDestroyPicture ;
 int PICTURE_PLANE_MAX ;
 int VLC_UNUSED (unsigned int) ;
 TYPE_4__* calloc (int,int) ;
 int free (void*) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ picture_NewFromResource (int *,TYPE_5__*) ;
 int picture_Release (scalar_t__) ;
 int * picture_pool_New (int,scalar_t__*) ;

__attribute__((used)) static picture_pool_t *Pool(vout_display_t *vd, unsigned count)
{
    VLC_UNUSED(count);
    vout_display_sys_t *sys = vd->sys;
    picture_sys_t *psys;
    picture_resource_t rsc;
    int i;

    if (!sys->pool && !sys->picture) {
        memset(&rsc, 0, sizeof(rsc));

        for (i = 0; i < PICTURE_PLANE_MAX; i++) {
            rsc.p[i].p_pixels = sys->map[0]+sys->offsets[i];
            rsc.p[i].i_lines = sys->height;
            rsc.p[i].i_pitch = sys->stride;
        }

        psys = calloc(1, sizeof(*psys));
        if (psys == ((void*)0))
            return ((void*)0);

        psys->p_voutsys = sys;
        rsc.p_sys = psys;
        rsc.pf_destroy = CustomDestroyPicture;

        sys->picture = picture_NewFromResource(&vd->fmt, &rsc);

        if (!sys->picture) {
            free((void*)psys);
            return ((void*)0);
        }

        sys->pool = picture_pool_New(1, &sys->picture);
        if (!sys->pool)
            picture_Release(sys->picture);
    }

    return sys->pool;
}
