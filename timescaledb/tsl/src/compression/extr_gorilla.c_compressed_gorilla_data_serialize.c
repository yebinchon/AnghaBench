
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nulls; TYPE_1__* header; int xors; int num_bits_used_per_xor; int leading_zeros; int tag1s; int tag0s; } ;
struct TYPE_7__ {int bits_used_in_last_xor_bucket; int num_xor_buckets; int bits_used_in_last_leading_zeros_bucket; int num_leading_zeroes_buckets; scalar_t__ has_nulls; int compression_algorithm; int last_value; int vl_len_; } ;
struct TYPE_6__ {scalar_t__ has_nulls; int last_value; } ;
typedef scalar_t__ Size ;
typedef TYPE_2__ GorillaCompressed ;
typedef TYPE_3__ CompressedGorillaData ;


 int AllocSizeIsValid (scalar_t__) ;
 int COMPRESSION_ALGORITHM_GORILLA ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ MaxAllocSize ;
 int SET_VARSIZE (int *,scalar_t__) ;
 scalar_t__ bit_array_data_bytes_used (int *) ;
 char* bytes_serialize_simple8b_and_advance (char*,scalar_t__,int ) ;
 char* bytes_store_bit_array_and_advance (char*,scalar_t__,int *,int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 char* palloc0 (scalar_t__) ;
 scalar_t__ simple8brle_serialized_total_size (int ) ;

__attribute__((used)) static GorillaCompressed *
compressed_gorilla_data_serialize(CompressedGorillaData *input)
{
 Size tags0s_size = simple8brle_serialized_total_size(input->tag0s);
 Size tags1s_size = simple8brle_serialized_total_size(input->tag1s);
 Size leading_zeros_size = bit_array_data_bytes_used(&input->leading_zeros);
 Size bits_used_per_xor_size = simple8brle_serialized_total_size(input->num_bits_used_per_xor);
 Size xors_size = bit_array_data_bytes_used(&input->xors);
 Size nulls_size = 0;

 Size compressed_size;
 char *data;
 GorillaCompressed *compressed;
 if (input->header->has_nulls)
  nulls_size = simple8brle_serialized_total_size(input->nulls);

 compressed_size = sizeof(GorillaCompressed) + tags0s_size + tags1s_size + leading_zeros_size +
       bits_used_per_xor_size + xors_size;
 if (input->header->has_nulls)
  compressed_size += nulls_size;

 if (!AllocSizeIsValid(compressed_size))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("compressed size exceeds the maximum allowed (%d)", (int) MaxAllocSize)));

 data = palloc0(compressed_size);
 compressed = (GorillaCompressed *) data;
 SET_VARSIZE(&compressed->vl_len_, compressed_size);

 compressed->last_value = input->header->last_value;
 compressed->compression_algorithm = COMPRESSION_ALGORITHM_GORILLA;
 compressed->has_nulls = input->header->has_nulls;
 data += sizeof(GorillaCompressed);

 data = bytes_serialize_simple8b_and_advance(data, tags0s_size, input->tag0s);
 data = bytes_serialize_simple8b_and_advance(data, tags1s_size, input->tag1s);
 data = bytes_store_bit_array_and_advance(data,
            leading_zeros_size,
            &input->leading_zeros,
            &compressed->num_leading_zeroes_buckets,
            &compressed->bits_used_in_last_leading_zeros_bucket);
 data = bytes_serialize_simple8b_and_advance(data,
            bits_used_per_xor_size,
            input->num_bits_used_per_xor);
 data = bytes_store_bit_array_and_advance(data,
            xors_size,
            &input->xors,
            &compressed->num_xor_buckets,
            &compressed->bits_used_in_last_xor_bucket);

 if (input->header->has_nulls)
  data = bytes_serialize_simple8b_and_advance(data, nulls_size, input->nulls);
 return compressed;
}
