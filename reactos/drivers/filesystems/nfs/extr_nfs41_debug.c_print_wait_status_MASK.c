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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
#define  STATUS_ALERTED 130 
#define  STATUS_SUCCESS 129 
#define  STATUS_USER_APC 128 

void FUNC1(int on, const char *prefix, NTSTATUS status, 
                       const char *opcode, PVOID entry, LONGLONG xid)
{
    if (!on) return;
    switch (status) {
    case STATUS_SUCCESS:
        if (opcode)
            FUNC0("%s Got a wakeup call, finishing %s entry=%p xid=%lld\n", 
                prefix, opcode, entry, xid);
        else
            FUNC0("%s Got a wakeup call\n", prefix);
        break;
    case STATUS_USER_APC:
        FUNC0("%s KeWaitForSingleObject returned STATUS_USER_APC\n", prefix);
        break;
    case STATUS_ALERTED:
        FUNC0("%s KeWaitForSingleObject returned STATUS_ALERTED\n", prefix);
        break;
    default:
        FUNC0("%s KeWaitForSingleObject returned %d\n", prefix, status);
    }
}