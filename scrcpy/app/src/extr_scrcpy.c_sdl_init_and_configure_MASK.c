#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH ; 
 int /*<<< orphan*/  SDL_HINT_RENDER_SCALE_QUALITY ; 
 int /*<<< orphan*/  SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS ; 
 int /*<<< orphan*/  SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR ; 
 int /*<<< orphan*/  SDL_INIT_EVENTS ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_Quit ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(bool display) {
    uint32_t flags = display ? SDL_INIT_VIDEO : SDL_INIT_EVENTS;
    if (FUNC4(flags)) {
        FUNC0("Could not initialize SDL: %s", FUNC3());
        return false;
    }

    FUNC6(SDL_Quit);

    if (!display) {
        return true;
    }

    // Use the best available scale quality
    if (!FUNC5(SDL_HINT_RENDER_SCALE_QUALITY, "2")) {
        FUNC1("Could not enable bilinear filtering");
    }

#ifdef SCRCPY_SDL_HAS_HINT_MOUSE_FOCUS_CLICKTHROUGH
    // Handle a click to gain focus as any other click
    if (!SDL_SetHint(SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH, "1")) {
        LOGW("Could not enable mouse focus clickthrough");
    }
#endif

#ifdef SCRCPY_SDL_HAS_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR
    // Disable compositor bypassing on X11
    if (!SDL_SetHint(SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR, "0")) {
        LOGW("Could not disable X11 compositor bypass");
    }
#endif

    // Do not minimize on focus loss
    if (!FUNC5(SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS, "0")) {
        FUNC1("Could not disable minimize on focus loss");
    }

    // Do not disable the screensaver when scrcpy is running
    FUNC2();

    return true;
}