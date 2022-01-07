
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint64 ;
typedef int StringInfo ;
typedef int Simple8bRleSerialized ;
typedef int DeltaDeltaCompressed ;
typedef int Datum ;


 int ERROR ;
 int PG_RETURN_POINTER (int *) ;
 int * delta_delta_from_parts (int ,int ,int *,int *) ;
 int elog (int ,char*) ;
 int pq_getmsgbyte (int ) ;
 int pq_getmsgint64 (int ) ;
 int * simple8brle_serialized_recv (int ) ;

Datum
deltadelta_compressed_recv(StringInfo buffer)
{
 uint8 has_nulls;
 uint64 last_value;
 uint64 last_delta;
 Simple8bRleSerialized *delta_deltas;
 Simple8bRleSerialized *nulls = ((void*)0);
 DeltaDeltaCompressed *compressed;

 has_nulls = pq_getmsgbyte(buffer);
 if (has_nulls != 0 && has_nulls != 1)
  elog(ERROR, "invalid recv in deltadelta: bad bool");

 last_value = pq_getmsgint64(buffer);
 last_delta = pq_getmsgint64(buffer);
 delta_deltas = simple8brle_serialized_recv(buffer);
 if (has_nulls)
  nulls = simple8brle_serialized_recv(buffer);

 compressed = delta_delta_from_parts(last_value, last_delta, delta_deltas, nulls);

 PG_RETURN_POINTER(compressed);
}
