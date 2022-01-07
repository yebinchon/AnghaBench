
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
struct TYPE_7__ {TYPE_1__ owner; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_8__ {unsigned int width; unsigned int height; int lock; } ;
typedef TYPE_3__ vlc_gl_surface_t ;


 int msg_Dbg (TYPE_2__*,char*,unsigned int,unsigned int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void vlc_gl_surface_ResizeNotify(vout_window_t *surface,
                                        unsigned width, unsigned height)
{
    vlc_gl_surface_t *sys = surface->owner.sys;

    msg_Dbg(surface, "resized to %ux%u", width, height);

    vlc_mutex_lock(&sys->lock);
    sys->width = width;
    sys->height = height;
    vlc_mutex_unlock(&sys->lock);
}
