
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_7__ {scalar_t__ xoffset; scalar_t__ yoffset; } ;
struct TYPE_6__ {int picture; TYPE_3__ var_info; int fd; scalar_t__ has_pan; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_t ;


 int FBIOPAN_DISPLAY ;
 int ioctl (int ,int ,TYPE_3__*) ;
 int picture_Copy (int ,int *) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;


    if (sys->has_pan) {
        sys->var_info.yoffset = 0;




        sys->var_info.xoffset = 0;


        static int panned = 0;
        if (panned < 0) {
            ioctl(sys->fd, FBIOPAN_DISPLAY, &sys->var_info);
            panned++;
        }
    }

    picture_Copy(sys->picture, picture);
}
