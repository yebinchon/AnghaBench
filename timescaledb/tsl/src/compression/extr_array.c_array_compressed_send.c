
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int has_nulls; int element_type; } ;
struct TYPE_5__ {scalar_t__ compression_algorithm; } ;
typedef int StringInfo ;
typedef TYPE_1__ CompressedDataHeader ;
typedef TYPE_2__ ArrayCompressed ;


 int Assert (int) ;
 scalar_t__ COMPRESSION_ALGORITHM_ARRAY ;
 int VARSIZE (TYPE_2__*) ;
 int array_compressed_data_send (int ,char const*,int,int ,int) ;
 int pq_sendbyte (int ,int) ;
 int type_append_to_binary_string (int ,int ) ;

void
array_compressed_send(CompressedDataHeader *header, StringInfo buffer)
{
 const char *compressed_data = (char *) header;
 uint32 data_size;
 ArrayCompressed *compressed_array_header;

 Assert(header->compression_algorithm == COMPRESSION_ALGORITHM_ARRAY);
 compressed_array_header = (ArrayCompressed *) header;

 compressed_data += sizeof(*compressed_array_header);

 data_size = VARSIZE(compressed_array_header);
 data_size -= sizeof(*compressed_array_header);

 pq_sendbyte(buffer, compressed_array_header->has_nulls == 1);

 type_append_to_binary_string(compressed_array_header->element_type, buffer);

 array_compressed_data_send(buffer,
          compressed_data,
          data_size,
          compressed_array_header->element_type,
          compressed_array_header->has_nulls);
}
