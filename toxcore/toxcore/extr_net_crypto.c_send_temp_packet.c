
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int temp_packet_num_sent; int temp_packet_sent_time; int temp_packet_length; int temp_packet; } ;
typedef int Net_Crypto ;
typedef TYPE_1__ Crypto_Connection ;


 int current_time_monotonic () ;
 TYPE_1__* get_crypto_connection (int *,int) ;
 scalar_t__ send_packet_to (int *,int,int ,int ) ;

__attribute__((used)) static int send_temp_packet(Net_Crypto *c, int crypt_connection_id)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    if (!conn->temp_packet)
        return -1;

    if (send_packet_to(c, crypt_connection_id, conn->temp_packet, conn->temp_packet_length) != 0)
        return -1;

    conn->temp_packet_sent_time = current_time_monotonic();
    ++conn->temp_packet_num_sent;
    return 0;
}
