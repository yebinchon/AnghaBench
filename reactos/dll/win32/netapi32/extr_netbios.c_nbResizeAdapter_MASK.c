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
typedef  int UCHAR ;
struct TYPE_3__ {int sessionsLen; int /*<<< orphan*/ * sessions; } ;
typedef  int /*<<< orphan*/  NetBIOSSession ;
typedef  TYPE_1__ NetBIOSAdapter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int NRC_GOODRET ; 
 int NRC_OSRESNOTAV ; 

__attribute__((used)) static UCHAR FUNC3(NetBIOSAdapter *adapter, UCHAR sessionsLen)
{
    UCHAR ret = NRC_GOODRET;

    if (adapter && adapter->sessionsLen < sessionsLen)
    {
        NetBIOSSession *newSessions;

        if (adapter->sessions)
            newSessions = FUNC2(FUNC0(),
             HEAP_ZERO_MEMORY, adapter->sessions, sessionsLen *
             sizeof(NetBIOSSession));
        else
            newSessions = FUNC1(FUNC0(),
             HEAP_ZERO_MEMORY, sessionsLen * sizeof(NetBIOSSession));
        if (newSessions)
        {
            adapter->sessions = newSessions;
            adapter->sessionsLen = sessionsLen;
        }
        else
            ret = NRC_OSRESNOTAV;
    }
    return ret;
}