#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UCHAR ;
struct TYPE_10__ {scalar_t__ inUse; } ;
struct TYPE_9__ {size_t sessionsLen; int /*<<< orphan*/  resetting; int /*<<< orphan*/  cs; TYPE_7__* sessions; int /*<<< orphan*/  cmdQueue; } ;
struct TYPE_8__ {scalar_t__* ncb_callname; int /*<<< orphan*/  ncb_lsn; } ;
typedef  TYPE_1__* PNCB ;
typedef  TYPE_2__ NetBIOSAdapter ;

/* Variables and functions */
 size_t DEFAULT_NUM_SESSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t NRC_BRIDGE ; 
 size_t NRC_GOODRET ; 
 size_t NRC_INVADDRESS ; 
 size_t NRC_TOOMANY ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_7__*) ; 
 size_t FUNC7 (TYPE_2__*,size_t) ; 

__attribute__((used)) static UCHAR FUNC8(NetBIOSAdapter *adapter, PNCB ncb)
{
    UCHAR ret;

    FUNC5(": adapter %p, ncb %p\n", adapter, ncb);

    if (!adapter) return NRC_BRIDGE;
    if (!ncb) return NRC_INVADDRESS;

    if (FUNC2(&adapter->resetting) == 1)
    {
        UCHAR i, resizeTo;

        FUNC4(adapter->cmdQueue);

        FUNC0(&adapter->cs);
        for (i = 0; i < adapter->sessionsLen; i++)
            if (adapter->sessions[i].inUse)
                FUNC6(adapter, &adapter->sessions[i]);
        if (!ncb->ncb_lsn)
            resizeTo = ncb->ncb_callname[0] == 0 ? DEFAULT_NUM_SESSIONS :
             ncb->ncb_callname[0];
        else if (adapter->sessionsLen == 0)
            resizeTo = DEFAULT_NUM_SESSIONS;
        else
            resizeTo = 0;
        if (resizeTo > 0)
            ret = FUNC7(adapter, resizeTo);
        else
            ret = NRC_GOODRET;
        FUNC3(&adapter->cs);
    }
    else
        ret = NRC_TOOMANY;
    FUNC1(&adapter->resetting);
    FUNC5("returning 0x%02x\n", ret);
    return ret;
}