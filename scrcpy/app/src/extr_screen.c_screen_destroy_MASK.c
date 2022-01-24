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
struct screen {scalar_t__ window; scalar_t__ renderer; scalar_t__ texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(struct screen *screen) {
    if (screen->texture) {
        FUNC1(screen->texture);
    }
    if (screen->renderer) {
        FUNC0(screen->renderer);
    }
    if (screen->window) {
        FUNC2(screen->window);
    }
}