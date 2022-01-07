
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; int is_null; int is_done; } ;
typedef int GorillaCompressor ;
typedef int GorillaCompressed ;
typedef int DecompressionIterator ;
typedef TYPE_1__ DecompressResult ;


 int Assert (int) ;
 int AssertDoubleEq (int ,double) ;
 int AssertInt64Eq (double,int) ;
 int DatumGetFloat8 (int ) ;
 int FLOAT8OID ;
 int PointerGetDatum (int *) ;
 double VARSIZE (int *) ;
 int double_get_bits (double) ;
 int * gorilla_compressor_alloc () ;
 int gorilla_compressor_append_value (int *,int ) ;
 int * gorilla_compressor_finish (int *) ;
 int * gorilla_decompression_iterator_from_datum_forward (int ,int ) ;
 int * gorilla_decompression_iterator_from_datum_reverse (int ,int ) ;
 TYPE_1__ gorilla_decompression_iterator_try_next_forward (int *) ;
 TYPE_1__ gorilla_decompression_iterator_try_next_reverse (int *) ;

__attribute__((used)) static void
test_gorilla_double()
{
 GorillaCompressor *compressor = gorilla_compressor_alloc();
 GorillaCompressed *compressed;
 DecompressionIterator *iter;
 double i;
 for (i = 0.0; i < 1015.0; i++)
  gorilla_compressor_append_value(compressor, double_get_bits(i));

 compressed = gorilla_compressor_finish(compressor);
 Assert(compressed != ((void*)0));
 AssertInt64Eq(VARSIZE(compressed), 1200);

 i = 0;
 iter =
  gorilla_decompression_iterator_from_datum_forward(PointerGetDatum(compressed), FLOAT8OID);
 for (DecompressResult r = gorilla_decompression_iterator_try_next_forward(iter); !r.is_done;
   r = gorilla_decompression_iterator_try_next_forward(iter))
 {
  Assert(!r.is_null);
  AssertDoubleEq(DatumGetFloat8(r.val), i);
  i += 1.0;
 }
 AssertInt64Eq(i, 1015);

 iter =
  gorilla_decompression_iterator_from_datum_reverse(PointerGetDatum(compressed), FLOAT8OID);
 for (DecompressResult r = gorilla_decompression_iterator_try_next_reverse(iter); !r.is_done;
   r = gorilla_decompression_iterator_try_next_reverse(iter))
 {
  Assert(!r.is_null);
  AssertDoubleEq(DatumGetFloat8(r.val), i - 1);
  i -= 1;
 }
 AssertInt64Eq(i, 0);
}
