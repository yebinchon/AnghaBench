#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int io_threads_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int io_threads_active ; 
 int /*<<< orphan*/ * io_threads_mutex ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ tio_debug ; 

void FUNC4(void) {
    if (tio_debug) { FUNC1("S"); FUNC0(stdout); }
    if (tio_debug) FUNC1("--- STARTING THREADED IO ---\n");
    FUNC3(io_threads_active == 0);
    for (int j = 0; j < server.io_threads_num; j++)
        FUNC2(&io_threads_mutex[j]);
    io_threads_active = 1;
}