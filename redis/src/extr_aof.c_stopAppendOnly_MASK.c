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
struct TYPE_2__ {scalar_t__ aof_state; int aof_fd; int aof_selected_db; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void) {
    FUNC4(server.aof_state != AOF_OFF);
    FUNC1(1);
    FUNC3(server.aof_fd);
    FUNC0(server.aof_fd);

    server.aof_fd = -1;
    server.aof_selected_db = -1;
    server.aof_state = AOF_OFF;
    FUNC2();
}