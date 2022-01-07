
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int is_null; int is_done; } ;
typedef int DeltaDeltaCompressor ;
typedef int DecompressionIterator ;
typedef TYPE_1__ DecompressResult ;
typedef int Datum ;


 int Assert (int) ;
 int AssertInt64Eq (int,int) ;
 int DatumGetInt64 (int ) ;
 int * DatumGetPointer (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int INT8OID ;
 int PointerGetDatum (int *) ;
 int VARSIZE (int *) ;
 int * delta_delta_compressor_alloc () ;
 int delta_delta_compressor_append_value (int *,int) ;
 int * delta_delta_decompression_iterator_from_datum_forward (int ,int ) ;
 TYPE_1__ delta_delta_decompression_iterator_try_next_forward (int *) ;
 int tsl_deltadelta_compressor_finish ;

__attribute__((used)) static void
test_delta()
{
 DeltaDeltaCompressor *compressor = delta_delta_compressor_alloc();
 Datum compressed;
 DecompressionIterator *iter;
 int i;
 for (i = 0; i < 1015; i++)
  delta_delta_compressor_append_value(compressor, i);

 compressed = DirectFunctionCall1(tsl_deltadelta_compressor_finish, PointerGetDatum(compressor));
 Assert(DatumGetPointer(compressed) != ((void*)0));
 AssertInt64Eq(VARSIZE(DatumGetPointer(compressed)), 56);

 i = 0;
 iter = delta_delta_decompression_iterator_from_datum_forward(compressed, INT8OID);
 for (DecompressResult r = delta_delta_decompression_iterator_try_next_forward(iter); !r.is_done;
   r = delta_delta_decompression_iterator_try_next_forward(iter))
 {
  Assert(!r.is_null);
  AssertInt64Eq(DatumGetInt64(r.val), i);
  i += 1;
 }
 AssertInt64Eq(i, 1015);
}
