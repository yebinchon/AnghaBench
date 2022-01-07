
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data; int data_len; int * sizes; int * nulls; int element_type; } ;
typedef int Size ;
typedef int Simple8bRleSerialized ;
typedef int Oid ;
typedef TYPE_1__ ArrayCompressedData ;


 void* bytes_deserialize_simple8b_and_advance (char const**) ;
 scalar_t__ simple8brle_serialized_total_size (int *) ;

__attribute__((used)) static ArrayCompressedData
array_compressed_data_from_bytes(const char *serialized_data, Size data_size, Oid element_type,
         bool has_nulls)
{
 ArrayCompressedData data = { .element_type = element_type };

 if (has_nulls)
 {
  Simple8bRleSerialized *nulls = bytes_deserialize_simple8b_and_advance(&serialized_data);
  data.nulls = nulls;
  data_size -= simple8brle_serialized_total_size(nulls);
 }

 data.sizes = bytes_deserialize_simple8b_and_advance(&serialized_data);
 data_size -= simple8brle_serialized_total_size(data.sizes);

 data.data = serialized_data;
 data.data_len = data_size;

 return data;
}
