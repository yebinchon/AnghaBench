#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ WatchCommand ;
struct TYPE_7__ {int /*<<< orphan*/ * cmd_pipe; } ;
typedef  TYPE_2__ SeafWTMonitor ;
typedef  int /*<<< orphan*/  CFOptionFlags ;
typedef  int /*<<< orphan*/  CFFileDescriptorRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  kCFFileDescriptorReadCallBack ; 
 int /*<<< orphan*/  FUNC3 (char*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (CFFileDescriptorRef fdref,
                             CFOptionFlags callBackTypes,
                             void *info)
{
    SeafWTMonitor *monitor = (SeafWTMonitor *)info;
    WatchCommand cmd;
    int n;

    n = FUNC4 (monitor->cmd_pipe[0], &cmd, sizeof(cmd));
    if (n != sizeof(cmd)) {
        FUNC5 ("[wt mon] failed to read command.\n");
        FUNC0 (fdref, kCFFileDescriptorReadCallBack);
        return;
    }

    FUNC3 ("[wt mon] %ld receive command type=%d, repo=%s\n",
                (long)FUNC1(), cmd.type, cmd.repo_id);
    FUNC2 (monitor, &cmd);
    FUNC0 (fdref, kCFFileDescriptorReadCallBack);
}