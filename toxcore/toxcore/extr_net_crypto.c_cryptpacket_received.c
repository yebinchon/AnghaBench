
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ buffer_end; scalar_t__ buffer_start; } ;
struct TYPE_5__ {TYPE_1__ send_array; } ;
typedef int Net_Crypto ;
typedef TYPE_2__ Crypto_Connection ;


 TYPE_2__* get_crypto_connection (int *,int) ;

int cryptpacket_received(Net_Crypto *c, int crypt_connection_id, uint32_t packet_number)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    uint32_t num = conn->send_array.buffer_end - conn->send_array.buffer_start;
    uint32_t num1 = packet_number - conn->send_array.buffer_start;

    if (num < num1) {
        return 0;
    } else {
        return -1;
    }
}
