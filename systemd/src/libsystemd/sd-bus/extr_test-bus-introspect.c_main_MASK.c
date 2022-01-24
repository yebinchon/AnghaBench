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
typedef  int /*<<< orphan*/  sd_bus_vtable ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* test_vtable_1 ; 
 int /*<<< orphan*/  const* test_vtable_2 ; 
 int /*<<< orphan*/  const* test_vtable_deprecated ; 
 scalar_t__ vtable_format_221 ; 

int FUNC2(int argc, char *argv[]) {
        FUNC1(LOG_DEBUG);

        FUNC0(test_vtable_1);
        FUNC0(test_vtable_2);
        FUNC0(test_vtable_deprecated);
        FUNC0((const sd_bus_vtable *) vtable_format_221);

        return 0;
}