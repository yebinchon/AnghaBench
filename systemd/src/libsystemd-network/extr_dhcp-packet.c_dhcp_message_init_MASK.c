#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {void* magic; void* xid; int /*<<< orphan*/  hlen; scalar_t__ htype; scalar_t__ op; } ;
typedef  TYPE_1__ DHCPMessage ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_INFINIBAND ; 
 int /*<<< orphan*/  BOOTREPLY ; 
 scalar_t__ BOOTREQUEST ; 
 int /*<<< orphan*/  DHCP_MAGIC_COOKIE ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_DHCP_OPTION_MESSAGE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,size_t,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(DHCPMessage *message, uint8_t op, uint32_t xid,
                      uint8_t type, uint16_t arp_type, size_t optlen,
                      size_t *optoffset) {
        size_t offset = 0;
        int r;

        FUNC1(FUNC0(op, BOOTREQUEST, BOOTREPLY));
        FUNC1(FUNC0(arp_type, ARPHRD_ETHER, ARPHRD_INFINIBAND));

        message->op = op;
        message->htype = arp_type;
        message->hlen = (arp_type == ARPHRD_ETHER) ? ETHER_ADDR_LEN : 0;
        message->xid = FUNC3(xid);
        message->magic = FUNC3(DHCP_MAGIC_COOKIE);

        r = FUNC2(message, optlen, &offset, 0,
                               SD_DHCP_OPTION_MESSAGE_TYPE, 1, &type);
        if (r < 0)
                return r;

        *optoffset = offset;

        return 0;
}