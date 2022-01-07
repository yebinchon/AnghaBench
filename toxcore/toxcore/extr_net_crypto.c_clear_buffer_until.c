
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ buffer_end; scalar_t__ buffer_start; int ** buffer; } ;
typedef TYPE_1__ Packets_Array ;


 scalar_t__ CRYPTO_PACKET_BUFFER_SIZE ;
 int free (int *) ;

__attribute__((used)) static int clear_buffer_until(Packets_Array *array, uint32_t number)
{
    uint32_t num_spots = array->buffer_end - array->buffer_start;

    if (array->buffer_end - number >= num_spots || number - array->buffer_start > num_spots)
        return -1;

    uint32_t i;

    for (i = array->buffer_start; i != number; ++i) {
        uint32_t num = i % CRYPTO_PACKET_BUFFER_SIZE;

        if (array->buffer[num]) {
            free(array->buffer[num]);
            array->buffer[num] = ((void*)0);
        }
    }

    array->buffer_start = i;
    return 0;
}
