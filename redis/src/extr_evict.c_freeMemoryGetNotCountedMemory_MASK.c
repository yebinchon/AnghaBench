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
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {scalar_t__ aof_state; int /*<<< orphan*/  aof_buf; int /*<<< orphan*/  slaves; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 

size_t FUNC7(void) {
    size_t overhead = 0;
    int slaves = FUNC2(server.slaves);

    if (slaves) {
        listIter li;
        listNode *ln;

        FUNC5(server.slaves,&li);
        while((ln = FUNC3(&li))) {
            client *slave = FUNC4(ln);
            overhead += FUNC1(slave);
        }
    }
    if (server.aof_state != AOF_OFF) {
        overhead += FUNC6(server.aof_buf)+FUNC0();
    }
    return overhead;
}