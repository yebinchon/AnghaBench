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
struct TYPE_2__ {scalar_t__ aof_state; scalar_t__ aof_enabled; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int /*<<< orphan*/  EMPTYDB_ASYNC ; 
 int /*<<< orphan*/  EMPTYDB_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(int restart_aof, int async) {
    if (restart_aof && server.aof_state != AOF_OFF) FUNC2();
    FUNC0(async? EMPTYDB_ASYNC: EMPTYDB_NO_FLAGS);
    if (server.aof_enabled && restart_aof) FUNC1();
}