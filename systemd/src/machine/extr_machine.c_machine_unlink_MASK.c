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
struct TYPE_4__ {char* state_file; scalar_t__ unit; } ;
typedef  TYPE_1__ Machine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(Machine *m) {
        FUNC0(m);

        if (m->unit) {
                char *sl;

                sl = FUNC1("/run/systemd/machines/unit:", m->unit);
                (void) FUNC2(sl);
        }

        if (m->state_file)
                (void) FUNC2(m->state_file);
}