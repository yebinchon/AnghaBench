
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sizes; int * nulls; } ;
struct TYPE_7__ {int val; scalar_t__ is_null; int is_done; } ;
struct TYPE_6__ {int num_elements; } ;
typedef int StringInfo ;
typedef int Size ;
typedef int Oid ;
typedef int DecompressionIterator ;
typedef TYPE_2__ DecompressResult ;
typedef int DatumSerializer ;
typedef scalar_t__ BinaryStringEncoding ;
typedef TYPE_3__ ArrayCompressedData ;


 scalar_t__ BINARY_ENCODING ;
 TYPE_3__ array_compressed_data_from_bytes (char const*,int ,int ,int) ;
 int * array_decompression_iterator_alloc_forward (char const*,int ,int ,int) ;
 TYPE_2__ array_decompression_iterator_try_next_forward (int *) ;
 int * create_datum_serializer (int ) ;
 int datum_append_to_binary_string (int *,scalar_t__,int ,int ) ;
 scalar_t__ datum_serializer_binary_string_encoding (int *) ;
 int pq_sendbyte (int ,int) ;
 int pq_sendint32 (int ,int ) ;
 int simple8brle_serialized_send (int ,int *) ;

void
array_compressed_data_send(StringInfo buffer, const char *serialized_data, Size data_size,
         Oid element_type, bool has_nulls)
{
 ArrayCompressedData data;
 DecompressionIterator *data_iter;
 DecompressResult datum;
 DatumSerializer *serializer = create_datum_serializer(element_type);
 BinaryStringEncoding encoding = datum_serializer_binary_string_encoding(serializer);

 data = array_compressed_data_from_bytes(serialized_data, data_size, element_type, has_nulls);

 pq_sendbyte(buffer, data.nulls != ((void*)0));
 if (data.nulls != ((void*)0))
  simple8brle_serialized_send(buffer, data.nulls);

 pq_sendbyte(buffer, encoding == BINARY_ENCODING);







 pq_sendint32(buffer, data.sizes->num_elements);
 data_iter = array_decompression_iterator_alloc_forward(serialized_data,
                 data_size,
                 element_type,
                 has_nulls);
 for (datum = array_decompression_iterator_try_next_forward(data_iter); !datum.is_done;
   datum = array_decompression_iterator_try_next_forward(data_iter))
 {
  if (datum.is_null)
   continue;

  datum_append_to_binary_string(serializer, encoding, buffer, datum.val);
 }
}
