
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* sys; } ;
struct TYPE_8__ {TYPE_1__ owner; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_9__ {TYPE_2__* surface; } ;
typedef TYPE_3__ vlc_gl_t ;
struct TYPE_10__ {unsigned int width; unsigned int height; int lock; } ;
typedef TYPE_4__ vlc_gl_surface_t ;


 int vlc_gl_Resize (TYPE_3__*,unsigned int,unsigned int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool vlc_gl_surface_CheckSize(vlc_gl_t *gl, unsigned *restrict width,
                              unsigned *restrict height)
{
    vout_window_t *surface = gl->surface;
    vlc_gl_surface_t *sys = surface->owner.sys;
    bool ret = 0;

    vlc_mutex_lock(&sys->lock);
    if (sys->width >= 0 && sys->height >= 0)
    {
        *width = sys->width;
        *height = sys->height;
        sys->width = -1;
        sys->height = -1;

        vlc_gl_Resize(gl, *width, *height);
        ret = 1;
    }
    vlc_mutex_unlock(&sys->lock);
    return ret;
}
