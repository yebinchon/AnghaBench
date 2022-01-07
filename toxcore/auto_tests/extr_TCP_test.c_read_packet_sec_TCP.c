
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sec_TCP_con {int recv_nonce; int shared_key; int sock; } ;


 int ck_assert_msg (int,char*,...) ;
 int decrypt_data_symmetric (int ,int ,int *,int,int *) ;
 int increment_nonce (int ) ;
 int recv (int ,int *,int,int ) ;

int read_packet_sec_TCP(struct sec_TCP_con *con, uint8_t *data, uint16_t length)
{
    int len;
    ck_assert_msg((len = recv(con->sock, data, length, 0)) == length, "wrong len %i\n", len);
    ck_assert_msg((len = decrypt_data_symmetric(con->shared_key, con->recv_nonce, data + 2, length - 2, data)) != -1,
                  "Decrypt failed");
    increment_nonce(con->recv_nonce);
    return len;
}
