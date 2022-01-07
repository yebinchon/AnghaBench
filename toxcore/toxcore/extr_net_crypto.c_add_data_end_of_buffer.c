
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int64_t ;
struct TYPE_4__ {size_t buffer_end; int ** buffer; } ;
typedef TYPE_1__ Packets_Array ;
typedef int Packet_Data ;


 size_t CRYPTO_PACKET_BUFFER_SIZE ;
 int * malloc (int) ;
 int memcpy (int *,int const*,int) ;
 size_t num_packets_array (TYPE_1__*) ;

__attribute__((used)) static int64_t add_data_end_of_buffer(Packets_Array *array, const Packet_Data *data)
{
    if (num_packets_array(array) >= CRYPTO_PACKET_BUFFER_SIZE)
        return -1;

    Packet_Data *new_d = malloc(sizeof(Packet_Data));

    if (new_d == ((void*)0))
        return -1;

    memcpy(new_d, data, sizeof(Packet_Data));
    uint32_t id = array->buffer_end;
    array->buffer[id % CRYPTO_PACKET_BUFFER_SIZE] = new_d;
    ++array->buffer_end;
    return id;
}
