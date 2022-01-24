#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_8__ {scalar_t__ cursor_deadline; scalar_t__ cursor_timeout; int /*<<< orphan*/  window; int /*<<< orphan*/  dp; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct caca_event {int dummy; } ;
struct TYPE_10__ {int caca; int vlc; } ;
struct TYPE_9__ {int caca; int /*<<< orphan*/  vlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACA_EVENT_ANY ; 
#define  CACA_EVENT_KEY_PRESS 133 
#define  CACA_EVENT_MOUSE_MOTION 132 
#define  CACA_EVENT_MOUSE_PRESS 131 
#define  CACA_EVENT_MOUSE_RELEASE 130 
#define  CACA_EVENT_QUIT 129 
#define  CACA_EVENT_RESIZE 128 
 scalar_t__ INVALID_DEADLINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct caca_event*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct caca_event*) ; 
 int FUNC3 (struct caca_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct caca_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct caca_event*) ; 
 int const FUNC6 (struct caca_event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* keys ; 
 TYPE_3__* mouses ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->cursor_deadline != INVALID_DEADLINE && sys->cursor_deadline < FUNC8()) {
        FUNC7(sys->dp, 0);
        sys->cursor_deadline = INVALID_DEADLINE;
    }

    struct caca_event ev;
    while (FUNC1(sys->dp, CACA_EVENT_ANY, &ev, 0) > 0) {
        switch (FUNC6(&ev)) {
        case CACA_EVENT_KEY_PRESS: {
            const int caca = FUNC2(&ev);

            for (int i = 0; keys[i].caca != -1; i++) {
                if (keys[i].caca == caca) {
                    const int vlc = keys[i].vlc;

                    if (vlc >= 0)
                        FUNC0(sys, vlc);
                    return;
                }
            }
            if (caca >= 0x20 && caca <= 0x7f) {
                FUNC0(sys, caca);
                return;
            }
            break;
        }
        case CACA_EVENT_RESIZE:
            break;
        case CACA_EVENT_MOUSE_MOTION:
            FUNC7(sys->dp, 1);
            sys->cursor_deadline = FUNC8() + sys->cursor_timeout;
            FUNC10(sys->window,
                                         FUNC4(&ev),
                                         FUNC5(&ev));
            break;
        case CACA_EVENT_MOUSE_PRESS:
        case CACA_EVENT_MOUSE_RELEASE: {
            FUNC7(sys->dp, 1);
            sys->cursor_deadline = FUNC8() + sys->cursor_timeout;

            const int caca = FUNC3(&ev);
            for (int i = 0; mouses[i].caca != -1; i++) {
                if (mouses[i].caca == caca) {
                    if (FUNC6(&ev) == CACA_EVENT_MOUSE_PRESS)
                        FUNC11(sys->window,
                                                       mouses[i].vlc);
                    else
                        FUNC12(sys->window,
                                                        mouses[i].vlc);
                    return;
                }
            }
            break;
        }
        case CACA_EVENT_QUIT:
            FUNC9(sys->window);
            break;
        default:
            break;
        }
    }
}