
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int width; unsigned int height; int opaque; int (* resizeCb ) (int ,unsigned int,unsigned int) ;} ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_7__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_gl_t ;


 int MakeCurrent (TYPE_2__*) ;
 int ReleaseCurrent (TYPE_2__*) ;
 int stub1 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void Resize(vlc_gl_t * gl, unsigned w, unsigned h)
{
    vout_display_sys_t *sys = gl->sys;
    if( sys->width == w && sys->height == h )
        return;

    if( !sys->resizeCb )
        return;

    MakeCurrent(gl);
    sys->resizeCb(sys->opaque, w, h);
    ReleaseCurrent(gl);
    sys->width = w;
    sys->height = h;
}
