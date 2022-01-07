
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int StringInfo ;
typedef int Oid ;
typedef int Datum ;
typedef int ArrayCompressorSerializationInfo ;


 int ERROR ;
 int PG_RETURN_POINTER (int ) ;
 int * array_compressed_data_recv (int ,int ) ;
 int array_compressed_from_serialization_info (int *,int ) ;
 int binary_string_get_type (int ) ;
 int elog (int ,char*) ;
 int pq_getmsgbyte (int ) ;

Datum
array_compressed_recv(StringInfo buffer)
{
 ArrayCompressorSerializationInfo *data;
 uint8 has_nulls;
 Oid element_type;

 has_nulls = pq_getmsgbyte(buffer);
 if (has_nulls != 0 && has_nulls != 1)
  elog(ERROR, "invalid recv in array: bad bool");

 element_type = binary_string_get_type(buffer);

 data = array_compressed_data_recv(buffer, element_type);

 PG_RETURN_POINTER(array_compressed_from_serialization_info(data, element_type));
}
