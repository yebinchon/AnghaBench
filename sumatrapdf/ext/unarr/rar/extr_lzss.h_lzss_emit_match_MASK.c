#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int position; int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ LZSS ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC2(LZSS *self, int offset, int length) {
    int windowoffs = FUNC0(self);
    int i;
    for (i = 0; i < length; i++) {
        self->window[(windowoffs + i) & FUNC1(self)] = self->window[(windowoffs + i - offset) & FUNC1(self)];
    }
    self->position += length;
}