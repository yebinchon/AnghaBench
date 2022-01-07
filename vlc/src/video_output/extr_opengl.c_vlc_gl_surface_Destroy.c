
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* sys; } ;
struct TYPE_11__ {TYPE_1__ owner; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_12__ {TYPE_2__* surface; } ;
typedef TYPE_3__ vlc_gl_t ;
struct TYPE_13__ {int lock; } ;
typedef TYPE_4__ vlc_gl_surface_t ;


 int free (TYPE_4__*) ;
 int vlc_gl_Release (TYPE_3__*) ;
 int vlc_mutex_destroy (int *) ;
 int vout_window_Delete (TYPE_2__*) ;
 int vout_window_Disable (TYPE_2__*) ;

void vlc_gl_surface_Destroy(vlc_gl_t *gl)
{
    vout_window_t *surface = gl->surface;
    vlc_gl_surface_t *sys = surface->owner.sys;

    vlc_gl_Release(gl);
    vout_window_Disable(surface);
    vout_window_Delete(surface);
    vlc_mutex_destroy(&sys->lock);
    free(sys);
}
