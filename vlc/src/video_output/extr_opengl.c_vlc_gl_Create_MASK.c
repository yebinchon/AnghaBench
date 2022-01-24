#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_window_t ;
struct TYPE_8__ {scalar_t__ getProcAddress; scalar_t__ swap; scalar_t__ releaseCurrent; scalar_t__ makeCurrent; int /*<<< orphan*/ * module; int /*<<< orphan*/ * surface; } ;
typedef  TYPE_2__ vlc_gl_t ;
struct TYPE_7__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct vout_display_cfg {TYPE_1__ display; int /*<<< orphan*/ * window; } ;
struct vlc_gl_priv_t {TYPE_2__ gl; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  VLC_OPENGL 129 
#define  VLC_OPENGL_ES2 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vlc_gl_priv_t* FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  vlc_gl_start ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char const*,char const*,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

vlc_gl_t *FUNC7(const struct vout_display_cfg *restrict cfg,
                        unsigned flags, const char *name)
{
    vout_window_t *wnd = cfg->window;
    struct vlc_gl_priv_t *glpriv;
    const char *type;

    switch (flags /*& VLC_OPENGL_API_MASK*/)
    {
        case VLC_OPENGL:
            type = "opengl";
            break;
        case VLC_OPENGL_ES2:
            type = "opengl es2";
            break;
        default:
            return NULL;
    }

    glpriv = FUNC4(FUNC0(wnd), sizeof (*glpriv), "gl");
    if (FUNC2(glpriv == NULL))
        return NULL;

    vlc_gl_t *gl = &glpriv->gl;
    gl->surface = wnd;
    gl->module = FUNC5(gl, type, name, true, vlc_gl_start, gl,
                                 cfg->display.width, cfg->display.height);
    if (gl->module == NULL)
    {
        FUNC6(gl);
        return NULL;
    }
    FUNC1(gl->makeCurrent && gl->releaseCurrent && gl->swap
        && gl->getProcAddress);
    FUNC3(&glpriv->rc);

    return &glpriv->gl;
}