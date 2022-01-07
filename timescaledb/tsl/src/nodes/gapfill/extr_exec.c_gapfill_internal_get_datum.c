
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;


 int Assert (int) ;




 int Int16GetDatum (int ) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;



__attribute__((used)) static inline Datum
gapfill_internal_get_datum(int64 value, Oid type)
{
 switch (type)
 {
  case 132:
   return Int16GetDatum(value);
  case 133:
  case 131:
   return Int32GetDatum(value);
  case 129:
  case 128:
  case 130:
   return Int64GetDatum(value);
  default:





   Assert(0);
   return Int64GetDatum(0);
 }
}
