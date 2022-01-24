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
struct size {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct screen {int /*<<< orphan*/  window; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  fullscreen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct size FUNC2 (struct screen*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct screen *screen) {
    if (!screen->fullscreen) {
        struct size optimal_size = FUNC2(screen,
                                                           screen->frame_size);
        FUNC1(screen->window, optimal_size.width,
                          optimal_size.height);
        FUNC0("Resized to optimal size");
    }
}