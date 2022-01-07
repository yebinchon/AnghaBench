
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vout_display_t ;
struct TYPE_10__ {size_t front_buf; int width; int height; scalar_t__* offsets; scalar_t__* map; TYPE_2__* picture; int * fb; int plane_id; int crtc; int drm_fd; } ;
typedef TYPE_4__ vout_display_sys_t ;
typedef int picture_t ;
struct TYPE_8__ {TYPE_1__* p; } ;
struct TYPE_7__ {scalar_t__ p_pixels; } ;


 size_t MAXHWBUF ;
 int PICTURE_PLANE_MAX ;
 int VLC_UNUSED (int *) ;
 scalar_t__ drmModeSetPlane (int ,int ,int ,int ,int ,int ,int ,int,int,int ,int ,int,int) ;
 int msg_Err (TYPE_3__*,char*,int ,int ) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *picture)
{
    VLC_UNUSED(picture);
    vout_display_sys_t *sys = vd->sys;
    int i;

    if (drmModeSetPlane(sys->drm_fd, sys->plane_id, sys->crtc,
                         sys->fb[sys->front_buf], 0,
                         0, 0, sys->width, sys->height,
                         0, 0, sys->width << 16, sys->height << 16)) {
        msg_Err(vd, "Cannot do set plane for plane id %u, fb %x",
                sys->plane_id,
                sys->fb[sys->front_buf]);
    } else {
        sys->front_buf++;
        sys->front_buf %= MAXHWBUF;

        for (i = 0; i < PICTURE_PLANE_MAX; i++)
            sys->picture->p[i].p_pixels =
                    sys->map[sys->front_buf]+sys->offsets[i];
    }
}
