
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t buffer_start; size_t buffer_end; int ** buffer; } ;
typedef TYPE_1__ Packets_Array ;


 size_t CRYPTO_PACKET_BUFFER_SIZE ;
 int free (int *) ;

__attribute__((used)) static int clear_buffer(Packets_Array *array)
{
    uint32_t i;

    for (i = array->buffer_start; i != array->buffer_end; ++i) {
        uint32_t num = i % CRYPTO_PACKET_BUFFER_SIZE;

        if (array->buffer[num]) {
            free(array->buffer[num]);
            array->buffer[num] = ((void*)0);
        }
    }

    array->buffer_start = i;
    return 0;
}
