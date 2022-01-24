#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct input_manager {TYPE_2__* video_buffer; int /*<<< orphan*/  screen; struct controller* controller; } ;
struct fps_counter {int dummy; } ;
struct controller {int dummy; } ;
struct control_msg {int dummy; } ;
struct TYPE_6__ {int mod; int sym; } ;
struct TYPE_8__ {scalar_t__ type; int repeat; TYPE_1__ keysym; } ;
struct TYPE_7__ {struct fps_counter* fps_counter; } ;
typedef  int SDL_Keycode ;
typedef  TYPE_3__ SDL_KeyboardEvent ;

/* Variables and functions */
 int ACTION_DOWN ; 
 int ACTION_UP ; 
 int KMOD_LALT ; 
 int KMOD_LCTRL ; 
 int KMOD_LGUI ; 
 int KMOD_LSHIFT ; 
 int KMOD_RALT ; 
 int KMOD_RCTRL ; 
 int KMOD_RGUI ; 
 int KMOD_RSHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCREEN_POWER_MODE_OFF ; 
#define  SDLK_BACKSPACE 143 
#define  SDLK_DOWN 142 
#define  SDLK_UP 141 
#define  SDLK_b 140 
#define  SDLK_c 139 
#define  SDLK_f 138 
#define  SDLK_g 137 
#define  SDLK_h 136 
#define  SDLK_i 135 
#define  SDLK_m 134 
#define  SDLK_n 133 
#define  SDLK_o 132 
#define  SDLK_p 131 
#define  SDLK_s 130 
#define  SDLK_v 129 
#define  SDLK_x 128 
 scalar_t__ SDL_KEYDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct controller*) ; 
 int /*<<< orphan*/  FUNC10 (struct controller*,struct control_msg*) ; 
 scalar_t__ FUNC11 (TYPE_3__ const*,struct control_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct controller*) ; 
 int /*<<< orphan*/  FUNC13 (struct controller*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct controller*) ; 
 int /*<<< orphan*/  FUNC18 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct fps_counter*) ; 

void
FUNC20(struct input_manager *input_manager,
                          const SDL_KeyboardEvent *event,
                          bool control) {
    // control: indicates the state of the command-line option --no-control
    // ctrl: the Ctrl key

    bool ctrl = event->keysym.mod & (KMOD_LCTRL | KMOD_RCTRL);
    bool alt = event->keysym.mod & (KMOD_LALT | KMOD_RALT);
    bool meta = event->keysym.mod & (KMOD_LGUI | KMOD_RGUI);

    // use Cmd on macOS, Ctrl on other platforms
#ifdef __APPLE__
    bool cmd = !ctrl && meta;
#else
    if (meta) {
        // no shortcuts involve Meta on platforms other than macOS, and it must
        // not be forwarded to the device
        return;
    }
    bool cmd = ctrl; // && !meta, already guaranteed
#endif

    if (alt) {
        // no shortcuts involve Alt, and it must not be forwarded to the device
        return;
    }

    struct controller *controller = input_manager->controller;

    // capture all Ctrl events
    if (ctrl || cmd) {
        SDL_Keycode keycode = event->keysym.sym;
        bool down = event->type == SDL_KEYDOWN;
        int action = down ? ACTION_DOWN : ACTION_UP;
        bool repeat = event->repeat;
        bool shift = event->keysym.mod & (KMOD_LSHIFT | KMOD_RSHIFT);
        switch (keycode) {
            case SDLK_h:
                // Ctrl+h on all platform, since Cmd+h is already captured by
                // the system on macOS to hide the window
                if (control && ctrl && !meta && !shift && !repeat) {
                    FUNC3(controller, action);
                }
                return;
            case SDLK_b: // fall-through
            case SDLK_BACKSPACE:
                if (control && cmd && !shift && !repeat) {
                    FUNC2(controller, action);
                }
                return;
            case SDLK_s:
                if (control && cmd && !shift && !repeat) {
                    FUNC1(controller, action);
                }
                return;
            case SDLK_m:
                // Ctrl+m on all platform, since Cmd+m is already captured by
                // the system on macOS to minimize the window
                if (control && ctrl && !meta && !shift && !repeat) {
                    FUNC4(controller, action);
                }
                return;
            case SDLK_p:
                if (control && cmd && !shift && !repeat) {
                    FUNC5(controller, action);
                }
                return;
            case SDLK_o:
                if (control && cmd && !shift && down) {
                    FUNC18(controller, SCREEN_POWER_MODE_OFF);
                }
                return;
            case SDLK_DOWN:
                if (control && cmd && !shift) {
                    // forward repeated events
                    FUNC6(controller, action);
                }
                return;
            case SDLK_UP:
                if (control && cmd && !shift) {
                    // forward repeated events
                    FUNC7(controller, action);
                }
                return;
            case SDLK_c:
                if (control && cmd && !shift && !repeat && down) {
                    FUNC13(controller);
                }
                return;
            case SDLK_v:
                if (control && cmd && !repeat && down) {
                    if (shift) {
                        // store the text in the device clipboard
                        FUNC17(controller);
                    } else {
                        // inject the text as input events
                        FUNC8(controller);
                    }
                }
                return;
            case SDLK_f:
                if (!shift && cmd && !repeat && down) {
                    FUNC16(input_manager->screen);
                }
                return;
            case SDLK_x:
                if (!shift && cmd && !repeat && down) {
                    FUNC14(input_manager->screen);
                }
                return;
            case SDLK_g:
                if (!shift && cmd && !repeat && down) {
                    FUNC15(input_manager->screen);
                }
                return;
            case SDLK_i:
                if (!shift && cmd && !repeat && down) {
                    struct fps_counter *fps_counter =
                        input_manager->video_buffer->fps_counter;
                    FUNC19(fps_counter);
                }
                return;
            case SDLK_n:
                if (control && cmd && !repeat && down) {
                    if (shift) {
                        FUNC9(controller);
                    } else {
                        FUNC12(controller);
                    }
                }
                return;
        }

        return;
    }

    if (!control) {
        return;
    }

    struct control_msg msg;
    if (FUNC11(event, &msg)) {
        if (!FUNC10(controller, &msg)) {
            FUNC0("Could not request 'inject keycode'");
        }
    }
}