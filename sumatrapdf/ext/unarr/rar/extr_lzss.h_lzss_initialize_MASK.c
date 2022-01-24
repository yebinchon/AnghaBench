#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mask; scalar_t__ position; int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ LZSS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(LZSS *self, int windowsize) {
    self->window = FUNC1(windowsize);
    if (!self->window)
        return false;

    self->mask = windowsize - 1; /* Assume windows are power-of-two sized! */
    FUNC2(self->window, 0, FUNC0(self));
    self->position = 0;
    return true;
}