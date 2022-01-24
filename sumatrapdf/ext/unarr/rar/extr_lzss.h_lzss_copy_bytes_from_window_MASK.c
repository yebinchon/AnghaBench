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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ LZSS ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC3(LZSS *self, uint8_t *buffer, int64_t startpos, int length) {
    int windowoffs = FUNC0(self, startpos);
    int firstpart = FUNC1(self) - windowoffs;
    if (length <= firstpart) {
        /* Request fits inside window */
        FUNC2(buffer, &self->window[windowoffs], length);
    }
    else {
        /* Request wraps around window */
        FUNC2(buffer, &self->window[windowoffs], firstpart);
        FUNC2(buffer + firstpart, &self->window[0], length - firstpart);
    }
}