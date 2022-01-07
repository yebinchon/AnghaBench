
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ vlc_gl_t ;
struct vlc_gl_priv_t {int rc; } ;


 int VLC_OBJECT (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 int vlc_atomic_rc_dec (int *) ;
 int vlc_object_delete (TYPE_1__*) ;
 int vlc_objres_clear (int ) ;

void vlc_gl_Release(vlc_gl_t *gl)
{
    struct vlc_gl_priv_t *glpriv = (struct vlc_gl_priv_t *)gl;
    if (!vlc_atomic_rc_dec(&glpriv->rc))
        return;

    if (gl->destroy != ((void*)0))
        gl->destroy(gl);
    vlc_objres_clear(VLC_OBJECT(gl));
    vlc_object_delete(gl);
}
