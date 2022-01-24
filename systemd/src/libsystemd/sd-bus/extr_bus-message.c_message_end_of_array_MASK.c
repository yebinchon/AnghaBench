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
struct bus_container {scalar_t__ enclosing; size_t end; size_t begin; int /*<<< orphan*/ * array_size; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SD_BUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bus_container* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(sd_bus_message *m, size_t index) {
        struct bus_container *c;

        FUNC2(m);

        c = FUNC3(m);
        if (c->enclosing != SD_BUS_TYPE_ARRAY)
                return false;

        if (FUNC1(m))
                return index >= c->end;
        else {
                FUNC2(c->array_size);
                return index >= c->begin + FUNC0(m, *c->array_size);
        }
}