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
struct TYPE_4__ {scalar_t__ generator_late; scalar_t__ generator_early; scalar_t__ generator; } ;
typedef  TYPE_1__ LookupPaths ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(LookupPaths *p) {
        FUNC0(p);

        /* Trim empty dirs */

        if (p->generator)
                (void) FUNC1(p->generator);
        if (p->generator_early)
                (void) FUNC1(p->generator_early);
        if (p->generator_late)
                (void) FUNC1(p->generator_late);
}