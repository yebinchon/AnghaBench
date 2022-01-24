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
struct TYPE_4__ {int /*<<< orphan*/  hybrid_states; int /*<<< orphan*/  hybrid_modes; int /*<<< orphan*/  hibernate_states; int /*<<< orphan*/  hibernate_modes; int /*<<< orphan*/  suspend_states; int /*<<< orphan*/  suspend_modes; } ;
typedef  TYPE_1__ SleepConfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(SleepConfig *sc) {
        if (!sc)
                return;

        FUNC1(sc->suspend_modes);
        FUNC1(sc->suspend_states);

        FUNC1(sc->hibernate_modes);
        FUNC1(sc->hibernate_states);

        FUNC1(sc->hybrid_modes);
        FUNC1(sc->hybrid_states);

        FUNC0(sc);
}