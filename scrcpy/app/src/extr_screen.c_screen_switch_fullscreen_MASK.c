#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct screen {int fullscreen; TYPE_1__ windowed_window_size; int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_WINDOW_FULLSCREEN_DESKTOP ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct screen*) ; 

void
FUNC7(struct screen *screen) {
    if (!screen->fullscreen) {
        // going to fullscreen, store the current windowed window size
        screen->windowed_window_size = FUNC5(screen->window);
    }
    uint32_t new_mode = screen->fullscreen ? 0 : SDL_WINDOW_FULLSCREEN_DESKTOP;
    if (FUNC3(screen->window, new_mode)) {
        FUNC1("Could not switch fullscreen mode: %s", FUNC2());
        return;
    }

    screen->fullscreen = !screen->fullscreen;
    if (!screen->fullscreen) {
        // fullscreen disabled, restore expected windowed window size
        FUNC4(screen->window, screen->windowed_window_size.width,
                          screen->windowed_window_size.height);
    }

    FUNC0("Switched to %s mode", screen->fullscreen ? "fullscreen" : "windowed");
    FUNC6(screen);
}