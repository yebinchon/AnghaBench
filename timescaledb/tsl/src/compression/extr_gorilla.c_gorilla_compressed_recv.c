
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* nulls; void* xors; void* num_bits_used_per_xor; void* leading_zeros; void* tag1s; void* tag0s; TYPE_2__* header; } ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {int has_nulls; int last_value; TYPE_1__ member_0; } ;
typedef int StringInfo ;
typedef TYPE_2__ GorillaCompressed ;
typedef int Datum ;
typedef TYPE_3__ CompressedGorillaData ;


 int ERROR ;
 int PG_RETURN_POINTER (int ) ;
 void* bit_array_recv (int ) ;
 int compressed_gorilla_data_serialize (TYPE_3__*) ;
 int elog (int ,char*) ;
 int pq_getmsgbyte (int ) ;
 int pq_getmsgint64 (int ) ;
 void* simple8brle_serialized_recv (int ) ;

Datum
gorilla_compressed_recv(StringInfo buf)
{
 GorillaCompressed header = { { 0 } };
 CompressedGorillaData data = {
  .header = &header,
 };

 header.has_nulls = pq_getmsgbyte(buf);
 if (header.has_nulls != 0 && header.has_nulls != 1)
  elog(ERROR, "invalid recv in gorilla: bad bool");

 header.last_value = pq_getmsgint64(buf);
 data.tag0s = simple8brle_serialized_recv(buf);
 data.tag1s = simple8brle_serialized_recv(buf);
 data.leading_zeros = bit_array_recv(buf);
 data.num_bits_used_per_xor = simple8brle_serialized_recv(buf);
 data.xors = bit_array_recv(buf);

 if (header.has_nulls)
  data.nulls = simple8brle_serialized_recv(buf);

 PG_RETURN_POINTER(compressed_gorilla_data_serialize(&data));
}
