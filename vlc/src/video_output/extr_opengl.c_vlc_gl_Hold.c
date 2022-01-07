
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_gl_t ;
struct vlc_gl_priv_t {int rc; } ;


 int vlc_atomic_rc_inc (int *) ;

void vlc_gl_Hold(vlc_gl_t *gl)
{
    struct vlc_gl_priv_t *glpriv = (struct vlc_gl_priv_t *)gl;
    vlc_atomic_rc_inc(&glpriv->rc);
}
