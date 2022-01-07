
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; int is_null; int is_done; } ;
typedef int DecompressionIterator ;
typedef TYPE_1__ DecompressResult ;
typedef int ArrayCompressor ;
typedef int ArrayCompressed ;


 int Assert (int) ;
 int AssertInt64Eq (int,int) ;
 int DatumGetInt32 (int ) ;
 int INT4OID ;
 int Int32GetDatum (int) ;
 int PointerGetDatum (int *) ;
 int * array_compressor_alloc (int ) ;
 int array_compressor_append (int *,int ) ;
 int * array_compressor_finish (int *) ;
 TYPE_1__ array_decompression_iterator_try_next_forward (int *) ;
 TYPE_1__ array_decompression_iterator_try_next_reverse (int *) ;
 int * tsl_array_decompression_iterator_from_datum_forward (int ,int ) ;
 int * tsl_array_decompression_iterator_from_datum_reverse (int ,int ) ;

__attribute__((used)) static void
test_int_array()
{
 ArrayCompressor *compressor = array_compressor_alloc(INT4OID);
 ArrayCompressed *compressed;
 DecompressionIterator *iter;
 int i;
 for (i = 0; i < 1015; i++)
  array_compressor_append(compressor, Int32GetDatum(i));

 compressed = array_compressor_finish(compressor);
 Assert(compressed != ((void*)0));

 i = 0;
 iter =
  tsl_array_decompression_iterator_from_datum_forward(PointerGetDatum(compressed), INT4OID);
 for (DecompressResult r = array_decompression_iterator_try_next_forward(iter); !r.is_done;
   r = array_decompression_iterator_try_next_forward(iter))
 {
  Assert(!r.is_null);
  AssertInt64Eq(DatumGetInt32(r.val), i);
  i += 1;
 }
 AssertInt64Eq(i, 1015);

 iter =
  tsl_array_decompression_iterator_from_datum_reverse(PointerGetDatum(compressed), INT4OID);
 for (DecompressResult r = array_decompression_iterator_try_next_reverse(iter); !r.is_done;
   r = array_decompression_iterator_try_next_reverse(iter))
 {
  Assert(!r.is_null);
  AssertInt64Eq(DatumGetInt32(r.val), i - 1);
  i -= 1;
 }
 AssertInt64Eq(i, 0);
}
