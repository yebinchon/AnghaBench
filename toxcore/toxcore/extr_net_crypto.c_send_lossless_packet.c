
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int int64_t ;
struct TYPE_7__ {int buffer_start; } ;
struct TYPE_9__ {int maximum_speed_reached; int send_array; TYPE_1__ recv_array; int mutex; } ;
struct TYPE_8__ {scalar_t__ sent_time; int data; int length; } ;
typedef TYPE_2__ Packet_Data ;
typedef int Net_Crypto ;
typedef TYPE_3__ Crypto_Connection ;


 int LOGGER_ERROR (char*) ;
 int MAX_CRYPTO_DATA_SIZE ;
 int add_data_end_of_buffer (int *,TYPE_2__*) ;
 scalar_t__ current_time_monotonic () ;
 TYPE_3__* get_crypto_connection (int *,int) ;
 int get_data_pointer (int *,TYPE_2__**,int) ;
 int memcpy (int ,scalar_t__ const*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset_max_speed_reached (int *,int) ;
 scalar_t__ send_data_packet_helper (int *,int,int ,int,scalar_t__ const*,int ) ;

__attribute__((used)) static int64_t send_lossless_packet(Net_Crypto *c, int crypt_connection_id, const uint8_t *data, uint16_t length,
                                    uint8_t congestion_control)
{
    if (length == 0 || length > MAX_CRYPTO_DATA_SIZE)
        return -1;

    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;



    reset_max_speed_reached(c, crypt_connection_id);

    if (conn->maximum_speed_reached && congestion_control) {
        return -1;
    }

    Packet_Data dt;
    dt.sent_time = 0;
    dt.length = length;
    memcpy(dt.data, data, length);
    pthread_mutex_lock(&conn->mutex);
    int64_t packet_num = add_data_end_of_buffer(&conn->send_array, &dt);
    pthread_mutex_unlock(&conn->mutex);

    if (packet_num == -1)
        return -1;

    if (!congestion_control && conn->maximum_speed_reached) {
        return packet_num;
    }

    if (send_data_packet_helper(c, crypt_connection_id, conn->recv_array.buffer_start, packet_num, data, length) == 0) {
        Packet_Data *dt1 = ((void*)0);

        if (get_data_pointer(&conn->send_array, &dt1, packet_num) == 1)
            dt1->sent_time = current_time_monotonic();
    } else {
        conn->maximum_speed_reached = 1;
        LOGGER_ERROR("send_data_packet failed\n");
    }

    return packet_num;
}
