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
struct TYPE_2__ {scalar_t__ aof_rewrite_buf_blocks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  zfree ; 

void FUNC3(void) {
    if (server.aof_rewrite_buf_blocks)
        FUNC1(server.aof_rewrite_buf_blocks);

    server.aof_rewrite_buf_blocks = FUNC0();
    FUNC2(server.aof_rewrite_buf_blocks,zfree);
}