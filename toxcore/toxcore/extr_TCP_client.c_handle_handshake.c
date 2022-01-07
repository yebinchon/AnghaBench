
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int plain ;
struct TYPE_3__ {int temp_secret_key; int shared_key; int recv_nonce; } ;
typedef TYPE_1__ TCP_Client_Connection ;


 int TCP_SERVER_HANDSHAKE_SIZE ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int decrypt_data_symmetric (int ,int const*,int const*,int,int *) ;
 int encrypt_precompute (int *,int ,int ) ;
 int memcpy (int ,int *,int) ;
 int sodium_memzero (int ,int ) ;

__attribute__((used)) static int handle_handshake(TCP_Client_Connection *TCP_conn, const uint8_t *data)
{
    uint8_t plain[crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES];
    int len = decrypt_data_symmetric(TCP_conn->shared_key, data, data + crypto_box_NONCEBYTES,
                                     TCP_SERVER_HANDSHAKE_SIZE - crypto_box_NONCEBYTES, plain);

    if (len != sizeof(plain))
        return -1;

    memcpy(TCP_conn->recv_nonce, plain + crypto_box_PUBLICKEYBYTES, crypto_box_NONCEBYTES);
    encrypt_precompute(plain, TCP_conn->temp_secret_key, TCP_conn->shared_key);
    sodium_memzero(TCP_conn->temp_secret_key, crypto_box_SECRETKEYBYTES);
    return 0;
}
