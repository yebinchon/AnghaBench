#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  runtime_storage; scalar_t__ runtime_journal; int /*<<< orphan*/  system_storage; scalar_t__ system_journal; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Server *s) {
        int r;

        FUNC0(s);

        FUNC4(s);
        FUNC5(s, true);

        if (s->system_journal)
                FUNC3(&s->system_storage);
        if (s->runtime_journal)
                FUNC3(&s->runtime_storage);

        /* Let clients know when the most recent rotation happened. */
        r = FUNC6("/run/systemd/journal/rotated", FUNC2(CLOCK_MONOTONIC));
        if (r < 0)
                FUNC1(r, "Failed to write /run/systemd/journal/rotated, ignoring: %m");
}