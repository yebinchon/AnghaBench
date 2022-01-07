
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ compression_algorithm; } ;
struct TYPE_4__ {int delta_deltas; scalar_t__ has_nulls; int last_delta; int last_value; } ;
typedef int StringInfo ;
typedef int Simple8bRleSerialized ;
typedef TYPE_1__ DeltaDeltaCompressed ;
typedef TYPE_2__ CompressedDataHeader ;


 int Assert (int) ;
 scalar_t__ COMPRESSION_ALGORITHM_DELTADELTA ;
 int pq_sendbyte (int ,scalar_t__) ;
 int pq_sendint64 (int ,int ) ;
 int simple8brle_serialized_send (int ,int *) ;
 int simple8brle_serialized_total_size (int *) ;

void
deltadelta_compressed_send(CompressedDataHeader *header, StringInfo buffer)
{
 const DeltaDeltaCompressed *data = (DeltaDeltaCompressed *) header;
 Assert(header->compression_algorithm == COMPRESSION_ALGORITHM_DELTADELTA);
 pq_sendbyte(buffer, data->has_nulls);
 pq_sendint64(buffer, data->last_value);
 pq_sendint64(buffer, data->last_delta);
 simple8brle_serialized_send(buffer, &data->delta_deltas);
 if (data->has_nulls)
 {
  Simple8bRleSerialized *nulls =
   (Simple8bRleSerialized *) (((char *) &data->delta_deltas) +
            simple8brle_serialized_total_size(&data->delta_deltas));
  simple8brle_serialized_send(buffer, nulls);
 }
}
