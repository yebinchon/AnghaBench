
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;


 int DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int ERROR ;



 int elog (int ,char*,int) ;

__attribute__((used)) static int64
ts_integer_to_internal(Datum time_val, Oid type_oid)
{
 switch (type_oid)
 {
  case 128:
   return DatumGetInt64(time_val);
  case 129:
   return (int64) DatumGetInt32(time_val);
  case 130:
   return (int64) DatumGetInt16(time_val);
  default:
   elog(ERROR, "unknown interval type OID %d", type_oid);
   return -1;
 }
}
