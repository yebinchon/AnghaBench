
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int plain ;
struct TYPE_3__ {int net; int secret_symmetric_key; } ;
typedef TYPE_1__ Onion ;
typedef int IP_Port ;


 scalar_t__ const NET_PACKET_ANNOUNCE_RESPONSE ;
 scalar_t__ const NET_PACKET_ONION_DATA_RESPONSE ;
 scalar_t__ NET_PACKET_ONION_RECV_2 ;
 int ONION_MAX_PACKET_SIZE ;
 int RETURN_2 ;
 int RETURN_3 ;
 int SIZE_IPPORT ;
 int change_symmetric_key (TYPE_1__*) ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int decrypt_data_symmetric (int ,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ;
 int ipport_unpack (int *,scalar_t__*,int,int ) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__ sendpacket (int ,int ,scalar_t__*,int) ;

__attribute__((used)) static int handle_recv_3(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion *onion = object;

    if (length > ONION_MAX_PACKET_SIZE)
        return 1;

    if (length <= 1 + RETURN_3)
        return 1;

    if (packet[1 + RETURN_3] != NET_PACKET_ANNOUNCE_RESPONSE &&
            packet[1 + RETURN_3] != NET_PACKET_ONION_DATA_RESPONSE) {
        return 1;
    }

    change_symmetric_key(onion);

    uint8_t plain[SIZE_IPPORT + RETURN_2];
    int len = decrypt_data_symmetric(onion->secret_symmetric_key, packet + 1, packet + 1 + crypto_box_NONCEBYTES,
                                     SIZE_IPPORT + RETURN_2 + crypto_box_MACBYTES, plain);

    if ((uint32_t)len != sizeof(plain))
        return 1;

    IP_Port send_to;

    if (ipport_unpack(&send_to, plain, len, 0) == -1)
        return 1;

    uint8_t data[ONION_MAX_PACKET_SIZE];
    data[0] = NET_PACKET_ONION_RECV_2;
    memcpy(data + 1, plain + SIZE_IPPORT, RETURN_2);
    memcpy(data + 1 + RETURN_2, packet + 1 + RETURN_3, length - (1 + RETURN_3));
    uint16_t data_len = 1 + RETURN_2 + (length - (1 + RETURN_3));

    if ((uint32_t)sendpacket(onion->net, send_to, data, data_len) != data_len)
        return 1;

    return 0;
}
