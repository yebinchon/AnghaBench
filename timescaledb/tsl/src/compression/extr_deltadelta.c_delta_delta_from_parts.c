
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint64 ;
typedef scalar_t__ uint32 ;
struct TYPE_10__ {int has_nulls; int delta_deltas; void* last_delta; void* last_value; int compression_algorithm; int vl_len_; } ;
struct TYPE_9__ {scalar_t__ num_elements; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ Simple8bRleSerialized ;
typedef TYPE_2__ DeltaDeltaCompressed ;


 int AllocSizeIsValid (scalar_t__) ;
 int Assert (int) ;
 int COMPRESSION_ALGORITHM_DELTADELTA ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ MaxAllocSize ;
 int SET_VARSIZE (int *,scalar_t__) ;
 char* bytes_serialize_simple8b_and_advance (char*,scalar_t__,TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 char* palloc (scalar_t__) ;
 scalar_t__ simple8brle_serialized_slot_size (TYPE_1__*) ;
 scalar_t__ simple8brle_serialized_total_size (TYPE_1__*) ;

__attribute__((used)) static DeltaDeltaCompressed *
delta_delta_from_parts(uint64 last_value, uint64 last_delta, Simple8bRleSerialized *deltas,
        Simple8bRleSerialized *nulls)
{
 uint32 nulls_size = 0;
 Size compressed_size;
 char *compressed_data;
 DeltaDeltaCompressed *compressed;
 if (nulls != ((void*)0))
  nulls_size = simple8brle_serialized_total_size(nulls);
 compressed_size =
  sizeof(DeltaDeltaCompressed) + simple8brle_serialized_slot_size(deltas) + nulls_size;

 if (!AllocSizeIsValid(compressed_size))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("compressed size exceeds the maximum allowed (%d)", (int) MaxAllocSize)));

 compressed_data = palloc(compressed_size);
 compressed = (DeltaDeltaCompressed *) compressed_data;
 SET_VARSIZE(&compressed->vl_len_, compressed_size);

 compressed->compression_algorithm = COMPRESSION_ALGORITHM_DELTADELTA;
 compressed->last_value = last_value;
 compressed->last_delta = last_delta;
 compressed->has_nulls = nulls_size != 0 ? 1 : 0;

 compressed_data = (char *) &compressed->delta_deltas;
 compressed_data =
  bytes_serialize_simple8b_and_advance(compressed_data,
            simple8brle_serialized_total_size(deltas),
            deltas);
 if (compressed->has_nulls)
 {
  Assert(nulls->num_elements > deltas->num_elements);
  bytes_serialize_simple8b_and_advance(compressed_data, nulls_size, nulls);
 }

 return compressed;
}
