#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  dwIndex; } ;
struct TYPE_7__ {TYPE_2__ ipr; } ;
typedef  TYPE_1__ NetBTAdapter ;
typedef  TYPE_2__ MIB_IPADDRROW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NRC_BADDR ; 
 int /*<<< orphan*/  NRC_GOODRET ; 
 int /*<<< orphan*/  NRC_OSRESNOTAV ; 
 int /*<<< orphan*/  NRC_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  gTransportID ; 

__attribute__((used)) static UCHAR FUNC4(const MIB_IPADDRROW *ipRow)
{
    UCHAR ret;
    NetBTAdapter *adapter;

    if (!ipRow) return NRC_BADDR;

    adapter = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(NetBTAdapter));
    if (adapter)
    {
        adapter->ipr = *ipRow;
        if (!FUNC2(gTransportID, ipRow->dwIndex, adapter))
        {
            FUNC3(adapter);
            ret = NRC_SYSTEM;
        }
        else
            ret = NRC_GOODRET;
    }
    else
        ret = NRC_OSRESNOTAV;
    return ret;
}