
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int int64_t ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ packets_left; int packets_sent; int packets_left_requested; } ;
typedef int Net_Crypto ;
typedef TYPE_1__ Crypto_Connection ;


 scalar_t__ CRYPTO_CONN_ESTABLISHED ;
 scalar_t__ const CRYPTO_RESERVED_PACKETS ;
 scalar_t__ const PACKET_ID_LOSSY_RANGE_START ;
 TYPE_1__* get_crypto_connection (int *,int) ;
 int send_lossless_packet (int *,int,scalar_t__ const*,scalar_t__,scalar_t__) ;

int64_t write_cryptpacket(Net_Crypto *c, int crypt_connection_id, const uint8_t *data, uint16_t length,
                          uint8_t congestion_control)
{
    if (length == 0)
        return -1;

    if (data[0] < CRYPTO_RESERVED_PACKETS)
        return -1;

    if (data[0] >= PACKET_ID_LOSSY_RANGE_START)
        return -1;

    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    if (conn->status != CRYPTO_CONN_ESTABLISHED)
        return -1;

    if (congestion_control && conn->packets_left == 0)
        return -1;

    int64_t ret = send_lossless_packet(c, crypt_connection_id, data, length, congestion_control);

    if (ret == -1)
        return -1;

    if (congestion_control) {
        --conn->packets_left;
        --conn->packets_left_requested;
        conn->packets_sent++;
    }

    return ret;
}
