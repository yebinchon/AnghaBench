
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vout_window_t ;
struct TYPE_8__ {scalar_t__ getProcAddress; scalar_t__ swap; scalar_t__ releaseCurrent; scalar_t__ makeCurrent; int * module; int * surface; } ;
typedef TYPE_2__ vlc_gl_t ;
struct TYPE_7__ {int height; int width; } ;
struct vout_display_cfg {TYPE_1__ display; int * window; } ;
struct vlc_gl_priv_t {TYPE_2__ gl; int rc; } ;


 int VLC_OBJECT (int *) ;


 int assert (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_atomic_rc_init (int *) ;
 struct vlc_gl_priv_t* vlc_custom_create (int ,int,char*) ;
 int vlc_gl_start ;
 int * vlc_module_load (TYPE_2__*,char const*,char const*,int,int ,TYPE_2__*,int ,int ) ;
 int vlc_object_delete (TYPE_2__*) ;

vlc_gl_t *vlc_gl_Create(const struct vout_display_cfg *restrict cfg,
                        unsigned flags, const char *name)
{
    vout_window_t *wnd = cfg->window;
    struct vlc_gl_priv_t *glpriv;
    const char *type;

    switch (flags )
    {
        case 129:
            type = "opengl";
            break;
        case 128:
            type = "opengl es2";
            break;
        default:
            return ((void*)0);
    }

    glpriv = vlc_custom_create(VLC_OBJECT(wnd), sizeof (*glpriv), "gl");
    if (unlikely(glpriv == ((void*)0)))
        return ((void*)0);

    vlc_gl_t *gl = &glpriv->gl;
    gl->surface = wnd;
    gl->module = vlc_module_load(gl, type, name, 1, vlc_gl_start, gl,
                                 cfg->display.width, cfg->display.height);
    if (gl->module == ((void*)0))
    {
        vlc_object_delete(gl);
        return ((void*)0);
    }
    assert(gl->makeCurrent && gl->releaseCurrent && gl->swap
        && gl->getProcAddress);
    vlc_atomic_rc_init(&glpriv->rc);

    return &glpriv->gl;
}
