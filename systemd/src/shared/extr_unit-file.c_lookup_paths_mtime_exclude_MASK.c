#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  runtime_control; int /*<<< orphan*/  persistent_control; int /*<<< orphan*/  transient; int /*<<< orphan*/  generator_late; int /*<<< orphan*/  generator_early; int /*<<< orphan*/  generator; } ;
typedef  TYPE_1__ LookupPaths ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const LookupPaths *lp, const char *path) {
        /* Paths that are under our exclusive control. Users shall not alter those directly. */

        return FUNC0(path, lp->generator) ||
               FUNC0(path, lp->generator_early) ||
               FUNC0(path, lp->generator_late) ||
               FUNC0(path, lp->transient) ||
               FUNC0(path, lp->persistent_control) ||
               FUNC0(path, lp->runtime_control);
}