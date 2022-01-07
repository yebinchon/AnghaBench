
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * nulls; int xors; int * num_bits_used_per_xor; int leading_zeros; int * tag1s; int * tag0s; TYPE_2__* header; } ;
struct TYPE_7__ {int has_nulls; int last_value; int compression_algorithm; } ;
struct TYPE_6__ {scalar_t__ has_nulls; int nulls; int xors; int bits_used_per_xor; int leading_zeros; int tag1s; int tag0s; int prev_val; } ;
typedef TYPE_1__ GorillaCompressor ;
typedef TYPE_2__ GorillaCompressed ;
typedef TYPE_3__ CompressedGorillaData ;


 int Assert (int) ;
 int COMPRESSION_ALGORITHM_GORILLA ;
 void* compressed_gorilla_data_serialize (TYPE_3__*) ;
 void* simple8brle_compressor_finish (int *) ;

void *
gorilla_compressor_finish(GorillaCompressor *compressor)
{
 GorillaCompressed header = {
  .compression_algorithm = COMPRESSION_ALGORITHM_GORILLA,
  .has_nulls = compressor->has_nulls ? 1 : 0,
  .last_value = compressor->prev_val,
 };
 CompressedGorillaData data = { .header = &header };
 data.tag0s = simple8brle_compressor_finish(&compressor->tag0s);
 if (data.tag0s == ((void*)0))
  return ((void*)0);

 data.tag1s = simple8brle_compressor_finish(&compressor->tag1s);
 Assert(data.tag1s != ((void*)0));
 data.leading_zeros = compressor->leading_zeros;





 data.num_bits_used_per_xor = simple8brle_compressor_finish(&compressor->bits_used_per_xor);
 Assert(data.num_bits_used_per_xor != ((void*)0));
 data.xors = compressor->xors;
 data.nulls = simple8brle_compressor_finish(&compressor->nulls);
 Assert(compressor->has_nulls || data.nulls != ((void*)0));

 return compressed_gorilla_data_serialize(&data);
}
