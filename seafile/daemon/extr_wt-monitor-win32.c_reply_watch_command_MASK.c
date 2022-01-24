#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * res_pipe; } ;
typedef  TYPE_1__ SeafWTMonitor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (SeafWTMonitor *monitor, int result)
{
    int n;

    n = FUNC0 (monitor->res_pipe[1], &result, sizeof(int));
    if (n != sizeof(int))
        FUNC1 ("[wt mon] fail to write command result.\n");
}