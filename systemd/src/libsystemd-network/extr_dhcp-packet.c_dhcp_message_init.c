
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {void* magic; void* xid; int hlen; scalar_t__ htype; scalar_t__ op; } ;
typedef TYPE_1__ DHCPMessage ;


 scalar_t__ ARPHRD_ETHER ;
 int ARPHRD_INFINIBAND ;
 int BOOTREPLY ;
 scalar_t__ BOOTREQUEST ;
 int DHCP_MAGIC_COOKIE ;
 int ETHER_ADDR_LEN ;
 int IN_SET (scalar_t__,scalar_t__,int ) ;
 int SD_DHCP_OPTION_MESSAGE_TYPE ;
 int assert (int ) ;
 int dhcp_option_append (TYPE_1__*,size_t,size_t*,int ,int ,int,scalar_t__*) ;
 void* htobe32 (int ) ;

int dhcp_message_init(DHCPMessage *message, uint8_t op, uint32_t xid,
                      uint8_t type, uint16_t arp_type, size_t optlen,
                      size_t *optoffset) {
        size_t offset = 0;
        int r;

        assert(IN_SET(op, BOOTREQUEST, BOOTREPLY));
        assert(IN_SET(arp_type, ARPHRD_ETHER, ARPHRD_INFINIBAND));

        message->op = op;
        message->htype = arp_type;
        message->hlen = (arp_type == ARPHRD_ETHER) ? ETHER_ADDR_LEN : 0;
        message->xid = htobe32(xid);
        message->magic = htobe32(DHCP_MAGIC_COOKIE);

        r = dhcp_option_append(message, optlen, &offset, 0,
                               SD_DHCP_OPTION_MESSAGE_TYPE, 1, &type);
        if (r < 0)
                return r;

        *optoffset = offset;

        return 0;
}
