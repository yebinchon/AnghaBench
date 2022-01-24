#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_2__* p; } ;
typedef  TYPE_3__ vout_thread_t ;
struct TYPE_25__ {int i_x; int i_y; scalar_t__ b_double_click; int /*<<< orphan*/  i_pressed; } ;
typedef  TYPE_4__ vlc_mouse_t ;
struct TYPE_22__ {int /*<<< orphan*/  lock; scalar_t__ chain_static; scalar_t__ chain_interactive; } ;
struct TYPE_23__ {int /*<<< orphan*/  mouse_opaque; int /*<<< orphan*/  (* mouse_event ) (TYPE_4__*,int /*<<< orphan*/ ) ;TYPE_4__ mouse; TYPE_1__ filter; int /*<<< orphan*/  display_lock; int /*<<< orphan*/  display; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOUSE_BUTTON_LEFT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__ const*) ; 

__attribute__((used)) static void FUNC12(vout_thread_t *vout,
                                    const vlc_mouse_t *win_mouse)
{
    vlc_mouse_t vid_mouse, tmp1, tmp2, *m;

    /* Translate window coordinates to video coordinates */
    FUNC9(&vout->p->display_lock);
    FUNC11(vout->p->display, &vid_mouse, win_mouse);
    FUNC10(&vout->p->display_lock);

    /* Then pass up the filter chains. */
    m = &vid_mouse;
    FUNC9(&vout->p->filter.lock);
    if (vout->p->filter.chain_static && vout->p->filter.chain_interactive) {
        if (!FUNC0(vout->p->filter.chain_interactive,
                                      &tmp1, m))
            m = &tmp1;
        if (!FUNC0(vout->p->filter.chain_static,
                                      &tmp2, m))
            m = &tmp2;
    }
    FUNC10(&vout->p->filter.lock);

    if (FUNC7(&vout->p->mouse, m))
        FUNC3(vout, "mouse-moved", m->i_x, m->i_y);

    if (FUNC6(&vout->p->mouse, m)) {
        FUNC4(vout, "mouse-button-down", m->i_pressed);

        if (FUNC8(&vout->p->mouse, m, MOUSE_BUTTON_LEFT)) {
            /* FIXME? */
            int x, y;

            FUNC2(vout, "mouse-moved", &x, &y);
            FUNC3(vout, "mouse-clicked", x, y);
        }
    }

    if (m->b_double_click)
        FUNC5(vout, "fullscreen");
    vout->p->mouse = *m;

    if (vout->p->mouse_event)
        vout->p->mouse_event(m, vout->p->mouse_opaque);
}