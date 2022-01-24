#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; TYPE_1__* member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/ * cmd_pipe; } ;
typedef  TYPE_1__ SeafWTMonitor ;
typedef  int /*<<< orphan*/  CFRunLoopSourceRef ;
typedef  int /*<<< orphan*/ * CFFileDescriptorRef ;
typedef  TYPE_2__ CFFileDescriptorContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  command_read_cb ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFFileDescriptorReadCallBack ; 
 int /*<<< orphan*/  kCFRunLoopDefaultMode ; 

__attribute__((used)) static int
FUNC6 (SeafWTMonitor *monitor)
{
    CFFileDescriptorContext ctx = {0, monitor, NULL, NULL, NULL};
    CFFileDescriptorRef fdref = FUNC0(NULL,
                                                       monitor->cmd_pipe[0], true,
                                                       command_read_cb, &ctx);
    if (fdref == NULL) {
        return -1;
    }

    FUNC2(fdref, kCFFileDescriptorReadCallBack);
    CFRunLoopSourceRef source = FUNC1(kCFAllocatorDefault, fdref, 0);
    FUNC4 (FUNC5(), source, kCFRunLoopDefaultMode);
    FUNC3(source);
    return 0;
}