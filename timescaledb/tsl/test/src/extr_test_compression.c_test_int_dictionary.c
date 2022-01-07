
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int is_null; int is_done; } ;
typedef int DictionaryCompressor ;
typedef int DictionaryCompressed ;
typedef int DecompressionIterator ;
typedef TYPE_1__ DecompressResult ;


 int Assert (int) ;
 int AssertInt64Eq (int,int) ;
 int DatumGetInt32 (int ) ;
 int INT4OID ;
 int Int32GetDatum (int) ;
 int PointerGetDatum (int *) ;
 int * dictionary_compressor_alloc (int ) ;
 int dictionary_compressor_append (int *,int ) ;
 int * dictionary_compressor_finish (int *) ;
 TYPE_1__ dictionary_decompression_iterator_try_next_forward (int *) ;
 int * tsl_dictionary_decompression_iterator_from_datum_forward (int ,int ) ;

__attribute__((used)) static void
test_int_dictionary()
{
 DictionaryCompressor *compressor = dictionary_compressor_alloc(INT4OID);
 DictionaryCompressed *compressed;
 DecompressionIterator *iter;
 int i;
 for (i = 0; i < 1015; i++)
  dictionary_compressor_append(compressor, Int32GetDatum(i % 15));

 compressed = dictionary_compressor_finish(compressor);
 Assert(compressed != ((void*)0));

 i = 0;
 iter = tsl_dictionary_decompression_iterator_from_datum_forward(PointerGetDatum(compressed),
                 INT4OID);
 for (DecompressResult r = dictionary_decompression_iterator_try_next_forward(iter); !r.is_done;
   r = dictionary_decompression_iterator_try_next_forward(iter))
 {
  Assert(!r.is_null);
  AssertInt64Eq(DatumGetInt32(r.val), i % 15);
  i += 1;
 }
 AssertInt64Eq(i, 1015);
}
