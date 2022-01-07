
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sec_TCP_con {int sock; int sent_nonce; int shared_key; } ;
typedef int packet ;


 int ck_assert_msg (int,char*) ;
 int crypto_box_MACBYTES ;
 int encrypt_data_symmetric (int ,int ,int *,int,int *) ;
 int htons (int) ;
 int increment_nonce (int ) ;
 int memcpy (int *,int*,int) ;
 int send (int ,int *,int,int ) ;

int write_packet_TCP_secure_connection(struct sec_TCP_con *con, uint8_t *data, uint16_t length)
{
    uint8_t packet[sizeof(uint16_t) + length + crypto_box_MACBYTES];

    uint16_t c_length = htons(length + crypto_box_MACBYTES);
    memcpy(packet, &c_length, sizeof(uint16_t));
    int len = encrypt_data_symmetric(con->shared_key, con->sent_nonce, data, length, packet + sizeof(uint16_t));

    if ((unsigned int)len != (sizeof(packet) - sizeof(uint16_t)))
        return -1;

    increment_nonce(con->sent_nonce);

    ck_assert_msg(send(con->sock, packet, sizeof(packet), 0) == sizeof(packet), "send failed");
    return 0;
}
