
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {scalar_t__ compression_algorithm; } ;
struct TYPE_5__ {int has_nulls; int element_type; } ;
typedef int StringInfo ;
typedef TYPE_1__ DictionaryCompressed ;
typedef TYPE_2__ CompressedDataHeader ;


 int Assert (int) ;
 scalar_t__ COMPRESSION_ALGORITHM_DICTIONARY ;
 int VARSIZE (TYPE_1__ const*) ;
 int array_compressed_data_send (int ,char const*,int,int ,int) ;
 int pq_sendbyte (int ,int) ;
 int simple8brle_serialized_send (int ,void*) ;
 int simple8brle_serialized_total_size (void*) ;
 int type_append_to_binary_string (int ,int ) ;

void
dictionary_compressed_send(CompressedDataHeader *header, StringInfo buffer)
{
 uint32 data_size;
 uint32 size;
 const DictionaryCompressed *compressed_header;
 const char *compressed_data;

 Assert(header->compression_algorithm == COMPRESSION_ALGORITHM_DICTIONARY);
 compressed_header = (DictionaryCompressed *) header;

 compressed_data = (char *) compressed_header;

 compressed_data += sizeof(*compressed_header);

 data_size = VARSIZE(compressed_header);
 data_size -= sizeof(*compressed_header);

 pq_sendbyte(buffer, compressed_header->has_nulls == 1);

 type_append_to_binary_string(compressed_header->element_type, buffer);

 size = simple8brle_serialized_total_size((void *) compressed_data);
 simple8brle_serialized_send(buffer, (void *) compressed_data);
 compressed_data += size;
 data_size -= size;

 if (compressed_header->has_nulls)
 {
  uint32 size = simple8brle_serialized_total_size((void *) compressed_data);
  simple8brle_serialized_send(buffer, (void *) compressed_data);
  compressed_data += size;
  data_size -= size;
 }

 array_compressed_data_send(buffer,
          compressed_data,
          data_size,
          compressed_header->element_type,
          0);
}
