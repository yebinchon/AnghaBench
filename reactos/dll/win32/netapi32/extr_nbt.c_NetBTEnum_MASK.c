#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UCHAR ;
struct TYPE_10__ {int dwAddr; int dwMask; } ;
struct TYPE_9__ {size_t dwNumEntries; TYPE_2__* table; } ;
typedef  TYPE_1__* PMIB_IPADDRTABLE ;
typedef  int /*<<< orphan*/  MIB_IPADDRTABLE ;
typedef  int /*<<< orphan*/  MIB_IPADDRROW ;
typedef  size_t DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*,size_t*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int INADDR_LOOPBACK ; 
 int IN_CLASSA_NET ; 
 scalar_t__ MAX_LANA ; 
 scalar_t__ NRC_GOODRET ; 
 scalar_t__ NRC_OSRESNOTAV ; 
 scalar_t__ NRC_SYSTEM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  NetBTEnumCallback ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  gTransportID ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC9 (size_t,scalar_t__) ; 

__attribute__((used)) static UCHAR FUNC10(void)
{
    UCHAR ret;
    DWORD size = 0;

    FUNC6("\n");

    if (FUNC0(NULL, &size, FALSE) == ERROR_INSUFFICIENT_BUFFER)
    {
        PMIB_IPADDRTABLE ipAddrs, coalesceTable = NULL;
        DWORD numIPAddrs = (size - sizeof(MIB_IPADDRTABLE)) /
         sizeof(MIB_IPADDRROW) + 1;

        ipAddrs = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, size);
        if (ipAddrs)
            coalesceTable = FUNC2(FUNC1(),
             HEAP_ZERO_MEMORY, sizeof(MIB_IPADDRTABLE) +
             (FUNC9(numIPAddrs, MAX_LANA + 1) - 1) * sizeof(MIB_IPADDRROW));
        if (ipAddrs && coalesceTable)
        {
            if (FUNC0(ipAddrs, &size, FALSE) == ERROR_SUCCESS)
            {
                DWORD ndx;

                for (ndx = 0; ndx < ipAddrs->dwNumEntries; ndx++)
                {
                    if ((ipAddrs->table[ndx].dwAddr &
                     ipAddrs->table[ndx].dwMask) !=
                     FUNC7((INADDR_LOOPBACK & IN_CLASSA_NET)))
                    {
                        BOOL newNetwork = TRUE;
                        DWORD innerIndex;

                        /* make sure we don't have more than one entry
                         * for a subnet */
                        for (innerIndex = 0; newNetwork &&
                         innerIndex < coalesceTable->dwNumEntries; innerIndex++)
                            if ((ipAddrs->table[ndx].dwAddr &
                             ipAddrs->table[ndx].dwMask) ==
                             (coalesceTable->table[innerIndex].dwAddr
                             & coalesceTable->table[innerIndex].dwMask))
                                newNetwork = FALSE;

                        if (newNetwork)
                            FUNC8(&coalesceTable->table[
                             coalesceTable->dwNumEntries++],
                             &ipAddrs->table[ndx], sizeof(MIB_IPADDRROW));
                    }
                }

                FUNC4(gTransportID, NetBTEnumCallback,
                 coalesceTable);
                ret = NRC_GOODRET;
                for (ndx = 0; ret == NRC_GOODRET &&
                 ndx < coalesceTable->dwNumEntries; ndx++)
                    if (coalesceTable->table[ndx].dwAddr != INADDR_LOOPBACK)
                        ret = FUNC5(&coalesceTable->table[ndx]);
            }
            else
                ret = NRC_SYSTEM;
            FUNC3(FUNC1(), 0, ipAddrs);
            FUNC3(FUNC1(), 0, coalesceTable);
        }
        else
            ret = NRC_OSRESNOTAV;
    }
    else
        ret = NRC_SYSTEM;
    FUNC6("returning 0x%02x\n", ret);
    return ret;
}