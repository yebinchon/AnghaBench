
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {unsigned int* uint32; } ;
struct TYPE_6__ {TYPE_1__ ip6; int family; } ;
struct TYPE_7__ {TYPE_2__ ip; scalar_t__ port; } ;
typedef int Net_Crypto ;
typedef TYPE_3__ IP_Port ;


 int MAX_CRYPTO_PACKET_SIZE ;
 scalar_t__ const NET_PACKET_COOKIE_REQUEST ;
 scalar_t__ const NET_PACKET_CRYPTO_HS ;
 int TCP_FAMILY ;
 scalar_t__ handle_new_connection_handshake (int *,TYPE_3__,scalar_t__ const*,int ) ;
 int tcp_oob_handle_cookie_request (int *,unsigned int,scalar_t__ const*,scalar_t__ const*,int ) ;

__attribute__((used)) static int tcp_oob_callback(void *object, const uint8_t *public_key, unsigned int tcp_connections_number,
                            const uint8_t *data, uint16_t length)
{
    if (length == 0 || length > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Net_Crypto *c = object;

    if (data[0] == NET_PACKET_COOKIE_REQUEST) {
        return tcp_oob_handle_cookie_request(c, tcp_connections_number, public_key, data, length);
    } else if (data[0] == NET_PACKET_CRYPTO_HS) {
        IP_Port source;
        source.port = 0;
        source.ip.family = TCP_FAMILY;
        source.ip.ip6.uint32[0] = tcp_connections_number;

        if (handle_new_connection_handshake(c, source, data, length) != 0)
            return -1;

        return 0;
    } else {
        return -1;
    }
}
