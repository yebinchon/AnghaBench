
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int sock_t ;


 int crypto_box_MACBYTES ;
 int decrypt_data_symmetric (int const*,int *,int *,int,int *) ;
 int increment_nonce (int *) ;
 scalar_t__ read_TCP_length (int ) ;
 int read_TCP_packet (int ,int *,scalar_t__) ;

int read_packet_TCP_secure_connection(sock_t sock, uint16_t *next_packet_length, const uint8_t *shared_key,
                                      uint8_t *recv_nonce, uint8_t *data, uint16_t max_len)
{
    if (*next_packet_length == 0) {
        uint16_t len = read_TCP_length(sock);

        if (len == (uint16_t)~0)
            return -1;

        if (len == 0)
            return 0;

        *next_packet_length = len;
    }

    if (max_len + crypto_box_MACBYTES < *next_packet_length)
        return -1;

    uint8_t data_encrypted[*next_packet_length];
    int len_packet = read_TCP_packet(sock, data_encrypted, *next_packet_length);

    if (len_packet != *next_packet_length)
        return 0;

    *next_packet_length = 0;

    int len = decrypt_data_symmetric(shared_key, recv_nonce, data_encrypted, len_packet, data);

    if (len + crypto_box_MACBYTES != len_packet)
        return -1;

    increment_nonce(recv_nonce);

    return len;
}
