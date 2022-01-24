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
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {int aof_child_pid; int aof_rewrite_scheduled; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__ server ; 

void FUNC4(client *c) {
    if (server.aof_child_pid != -1) {
        FUNC0(c,"Background append only file rewriting already in progress");
    } else if (FUNC2()) {
        server.aof_rewrite_scheduled = 1;
        FUNC1(c,"Background append only file rewriting scheduled");
    } else if (FUNC3() == C_OK) {
        FUNC1(c,"Background append only file rewriting started");
    } else {
        FUNC0(c,"Can't execute an AOF background rewriting. "
                        "Please check the server logs for more information.");
    }
}