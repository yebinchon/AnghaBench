
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_7__ {scalar_t__ val; int is_done; } ;
struct TYPE_6__ {scalar_t__ num_elements; } ;
typedef int StringInfo ;
typedef TYPE_1__ Simple8bRleDecompressionIterator ;
typedef TYPE_2__ Simple8bRleDecompressResult ;
typedef int Oid ;
typedef int DatumDeserializer ;
typedef int Datum ;
typedef int ArrayCompressorSerializationInfo ;
typedef int ArrayCompressor ;


 int Assert (int) ;
 int BINARY_ENCODING ;
 int TEXT_ENCODING ;
 int * array_compressor_alloc (int ) ;
 int array_compressor_append (int *,int ) ;
 int array_compressor_append_null (int *) ;
 int * array_compressor_get_serialization_info (int *) ;
 int binary_string_to_datum (int *,int ,int ) ;
 int * create_datum_deserializer (int ) ;
 scalar_t__ pq_getmsgbyte (int ) ;
 scalar_t__ pq_getmsgint32 (int ) ;
 int simple8brle_decompression_iterator_init_forward (TYPE_1__*,int ) ;
 TYPE_2__ simple8brle_decompression_iterator_try_next_forward (TYPE_1__*) ;
 int simple8brle_serialized_recv (int ) ;

ArrayCompressorSerializationInfo *
array_compressed_data_recv(StringInfo buffer, Oid element_type)
{
 ArrayCompressor *compressor = array_compressor_alloc(element_type);
 Simple8bRleDecompressionIterator nulls;
 uint8 has_nulls;
 DatumDeserializer *deser = create_datum_deserializer(element_type);
 bool use_binary_recv;
 uint32 num_elements;
 uint32 i;

 has_nulls = pq_getmsgbyte(buffer) != 0;
 if (has_nulls)
  simple8brle_decompression_iterator_init_forward(&nulls,
              simple8brle_serialized_recv(buffer));

 use_binary_recv = pq_getmsgbyte(buffer) != 0;


 num_elements = pq_getmsgint32(buffer);


 if (has_nulls)
  num_elements = nulls.num_elements;

 for (i = 0; i < num_elements; i++)
 {
  Datum val;
  if (has_nulls)
  {
   Simple8bRleDecompressResult null =
    simple8brle_decompression_iterator_try_next_forward(&nulls);
   Assert(!null.is_done);
   if (null.val)
   {
    array_compressor_append_null(compressor);
    continue;
   }
  }

  val = binary_string_to_datum(deser,
          use_binary_recv ? BINARY_ENCODING : TEXT_ENCODING,
          buffer);

  array_compressor_append(compressor, val);
 }

 return array_compressor_get_serialization_info(compressor);
}
