
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ buffer_start; scalar_t__ buffer_end; int * buffer; } ;
typedef TYPE_1__ Packets_Array ;


 size_t CRYPTO_PACKET_BUFFER_SIZE ;
 size_t PACKET_ID_REQUEST ;

__attribute__((used)) static int generate_request_packet(uint8_t *data, uint16_t length, const Packets_Array *recv_array)
{
    if (length == 0)
        return -1;

    data[0] = PACKET_ID_REQUEST;

    uint16_t cur_len = 1;

    if (recv_array->buffer_start == recv_array->buffer_end)
        return cur_len;

    if (length <= cur_len)
        return cur_len;

    uint32_t i, n = 1;

    for (i = recv_array->buffer_start; i != recv_array->buffer_end; ++i) {
        uint32_t num = i % CRYPTO_PACKET_BUFFER_SIZE;

        if (!recv_array->buffer[num]) {
            data[cur_len] = n;
            n = 0;
            ++cur_len;

            if (length <= cur_len)
                return cur_len;

        } else if (n == 255) {
            data[cur_len] = 0;
            n = 0;
            ++cur_len;

            if (length <= cur_len)
                return cur_len;
        }

        ++n;
    }

    return cur_len;
}
