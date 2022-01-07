
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * nulls; TYPE_1__ const* header; int xors; void* num_bits_used_per_xor; int leading_zeros; void* tag1s; void* tag0s; } ;
struct TYPE_5__ {scalar_t__ compression_algorithm; int has_nulls; int bits_used_in_last_xor_bucket; int num_xor_buckets; int bits_used_in_last_leading_zeros_bucket; int num_leading_zeroes_buckets; } ;
typedef TYPE_1__ GorillaCompressed ;
typedef TYPE_2__ CompressedGorillaData ;


 scalar_t__ COMPRESSION_ALGORITHM_GORILLA ;
 int ERROR ;
 char* bytes_attach_bit_array_and_advance (int *,char const*,int ,int ) ;
 void* bytes_deserialize_simple8b_and_advance (char const**) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
compressed_gorilla_data_init_from_pointer(CompressedGorillaData *expanded,
            const GorillaCompressed *compressed)
{
 bool has_nulls;
 const char *data = (char *) compressed;

 expanded->header = compressed;
 if (expanded->header->compression_algorithm != COMPRESSION_ALGORITHM_GORILLA)
  elog(ERROR, "unknown compression algorithm");

 has_nulls = expanded->header->has_nulls == 1;
 data += sizeof(GorillaCompressed);

 expanded->tag0s = bytes_deserialize_simple8b_and_advance(&data);
 expanded->tag1s = bytes_deserialize_simple8b_and_advance(&data);

 data = bytes_attach_bit_array_and_advance(&expanded->leading_zeros,
             data,
             expanded->header->num_leading_zeroes_buckets,
             expanded->header
              ->bits_used_in_last_leading_zeros_bucket);

 expanded->num_bits_used_per_xor = bytes_deserialize_simple8b_and_advance(&data);

 data = bytes_attach_bit_array_and_advance(&expanded->xors,
             data,
             expanded->header->num_xor_buckets,
             expanded->header->bits_used_in_last_xor_bucket);

 if (has_nulls)
  expanded->nulls = bytes_deserialize_simple8b_and_advance(&data);
 else
  expanded->nulls = ((void*)0);
}
