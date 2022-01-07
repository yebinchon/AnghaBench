
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ compression_algorithm; } ;
struct TYPE_7__ {int nulls; TYPE_1__* header; int xors; int num_bits_used_per_xor; int leading_zeros; int tag1s; int tag0s; } ;
struct TYPE_6__ {scalar_t__ has_nulls; int last_value; } ;
typedef int StringInfo ;
typedef int GorillaCompressed ;
typedef TYPE_2__ CompressedGorillaData ;
typedef TYPE_3__ CompressedDataHeader ;


 int Assert (int) ;
 scalar_t__ COMPRESSION_ALGORITHM_GORILLA ;
 int bit_array_send (int ,int *) ;
 int compressed_gorilla_data_init_from_pointer (TYPE_2__*,int const*) ;
 int pq_sendbyte (int ,scalar_t__) ;
 int pq_sendint64 (int ,int ) ;
 int simple8brle_serialized_send (int ,int ) ;

void
gorilla_compressed_send(CompressedDataHeader *header, StringInfo buf)
{
 CompressedGorillaData data;
 const GorillaCompressed *compressed = (GorillaCompressed *) header;
 Assert(header->compression_algorithm == COMPRESSION_ALGORITHM_GORILLA);

 compressed_gorilla_data_init_from_pointer(&data, compressed);
 pq_sendbyte(buf, data.header->has_nulls);
 pq_sendint64(buf, data.header->last_value);
 simple8brle_serialized_send(buf, data.tag0s);
 simple8brle_serialized_send(buf, data.tag1s);
 bit_array_send(buf, &data.leading_zeros);
 simple8brle_serialized_send(buf, data.num_bits_used_per_xor);
 bit_array_send(buf, &data.xors);
 if (data.header->has_nulls)
  simple8brle_serialized_send(buf, data.nulls);
}
