
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int consttype; int constvalue; int constisnull; } ;
typedef TYPE_1__ Const ;


 int Assert (int) ;
 int DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;



 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_unreachable () ;

__attribute__((used)) static int64
const_datum_get_int(Const *cnst)
{
 Assert(!cnst->constisnull);

 switch (cnst->consttype)
 {
  case 130:
   return (int64)(DatumGetInt16(cnst->constvalue));
  case 129:
   return (int64)(DatumGetInt32(cnst->constvalue));
  case 128:
   return DatumGetInt64(cnst->constvalue);
 }

 ereport(ERROR,
   (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
    errmsg("can only use const_datum_get_int with integer types")));

 pg_unreachable();
}
