
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int data ;
struct TYPE_5__ {int tcp_c; } ;
typedef TYPE_1__ Net_Crypto ;


 int COOKIE_REQUEST_PLAIN_LENGTH ;
 int COOKIE_RESPONSE_LENGTH ;
 int create_cookie_response (TYPE_1__*,int *,int *,int *,int *) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ handle_cookie_request (TYPE_1__*,int *,int *,int *,int const*,int ) ;
 int send_packet_tcp_connection (int ,int,int *,int) ;

__attribute__((used)) static int tcp_handle_cookie_request(Net_Crypto *c, int connections_number, const uint8_t *packet, uint16_t length)
{
    uint8_t request_plain[COOKIE_REQUEST_PLAIN_LENGTH];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    uint8_t dht_public_key[crypto_box_PUBLICKEYBYTES];

    if (handle_cookie_request(c, request_plain, shared_key, dht_public_key, packet, length) != 0)
        return -1;

    uint8_t data[COOKIE_RESPONSE_LENGTH];

    if (create_cookie_response(c, data, request_plain, shared_key, dht_public_key) != sizeof(data))
        return -1;

    int ret = send_packet_tcp_connection(c->tcp_c, connections_number, data, sizeof(data));
    return ret;
}
