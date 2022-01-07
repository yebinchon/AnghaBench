
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_6__ {int bits_per_pixel; } ;
struct TYPE_8__ {scalar_t__ video_ptr; scalar_t__ fd; int old_info; int * palette; int fb_cmap; TYPE_1__ var_info; int video_size; } ;
typedef TYPE_3__ vout_display_sys_t ;


 int ClearScreen (TYPE_3__*) ;
 int FBIOPUTCMAP ;
 int FBIOPUT_VSCREENINFO ;
 scalar_t__ MAP_FAILED ;
 int free (int *) ;
 int ioctl (scalar_t__,int ,int *) ;
 int munmap (scalar_t__,int ) ;
 int vlc_close (scalar_t__) ;

__attribute__((used)) static void CloseDisplay(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->video_ptr != MAP_FAILED) {
        ClearScreen(sys);
        munmap(sys->video_ptr, sys->video_size);
    }

    if (sys->fd >= 0) {

        if (sys->var_info.bits_per_pixel == 8) {
            ioctl(sys->fd, FBIOPUTCMAP, &sys->fb_cmap);
            free(sys->palette);
            sys->palette = ((void*)0);
        }


        ioctl(sys->fd, FBIOPUT_VSCREENINFO, &sys->old_info);


        vlc_close(sys->fd);
    }
}
