
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int data ;
struct TYPE_7__ {int buffer_start; } ;
struct TYPE_5__ {int buffer_end; } ;
struct TYPE_6__ {TYPE_1__ send_array; TYPE_4__ recv_array; } ;
typedef int Net_Crypto ;
typedef TYPE_2__ Crypto_Connection ;


 int MAX_CRYPTO_DATA_SIZE ;
 int generate_request_packet (int *,int,TYPE_4__*) ;
 TYPE_2__* get_crypto_connection (int *,int) ;
 int send_data_packet_helper (int *,int,int ,int ,int *,int) ;

__attribute__((used)) static int send_request_packet(Net_Crypto *c, int crypt_connection_id)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    uint8_t data[MAX_CRYPTO_DATA_SIZE];
    int len = generate_request_packet(data, sizeof(data), &conn->recv_array);

    if (len == -1)
        return -1;

    return send_data_packet_helper(c, crypt_connection_id, conn->recv_array.buffer_start, conn->send_array.buffer_end, data,
                                   len);
}
