
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int kill_packet ;
struct TYPE_6__ {int buffer_end; } ;
struct TYPE_5__ {int buffer_start; } ;
struct TYPE_7__ {TYPE_2__ send_array; TYPE_1__ recv_array; } ;
typedef int Net_Crypto ;
typedef TYPE_3__ Crypto_Connection ;


 int PACKET_ID_KILL ;
 TYPE_3__* get_crypto_connection (int *,int) ;
 int send_data_packet_helper (int *,int,int ,int ,int *,int) ;

__attribute__((used)) static int send_kill_packet(Net_Crypto *c, int crypt_connection_id)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    uint8_t kill_packet = PACKET_ID_KILL;
    return send_data_packet_helper(c, crypt_connection_id, conn->recv_array.buffer_start, conn->send_array.buffer_end,
                                   &kill_packet, sizeof(kill_packet));
}
