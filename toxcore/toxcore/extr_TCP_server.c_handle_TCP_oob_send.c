
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int resp_packet ;
struct TYPE_7__ {int const* public_key; } ;
struct TYPE_6__ {TYPE_2__* accepted_connection_array; } ;
typedef TYPE_1__ TCP_Server ;
typedef TYPE_2__ TCP_Secure_Connection ;


 scalar_t__ TCP_MAX_OOB_DATA_LENGTH ;
 int TCP_PACKET_OOB_RECV ;
 int crypto_box_PUBLICKEYBYTES ;
 int get_TCP_connection_index (TYPE_1__*,int const*) ;
 int memcpy (int *,int const*,scalar_t__) ;
 int write_packet_TCP_secure_connection (TYPE_2__*,int *,int,int ) ;

__attribute__((used)) static int handle_TCP_oob_send(TCP_Server *TCP_server, uint32_t con_id, const uint8_t *public_key, const uint8_t *data,
                               uint16_t length)
{
    if (length == 0 || length > TCP_MAX_OOB_DATA_LENGTH)
        return -1;

    TCP_Secure_Connection *con = &TCP_server->accepted_connection_array[con_id];

    int other_index = get_TCP_connection_index(TCP_server, public_key);

    if (other_index != -1) {
        uint8_t resp_packet[1 + crypto_box_PUBLICKEYBYTES + length];
        resp_packet[0] = TCP_PACKET_OOB_RECV;
        memcpy(resp_packet + 1, con->public_key, crypto_box_PUBLICKEYBYTES);
        memcpy(resp_packet + 1 + crypto_box_PUBLICKEYBYTES, data, length);
        write_packet_TCP_secure_connection(&TCP_server->accepted_connection_array[other_index], resp_packet,
                                           sizeof(resp_packet), 0);
    }

    return 0;
}
