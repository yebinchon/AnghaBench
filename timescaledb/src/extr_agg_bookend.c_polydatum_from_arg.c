
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flinfo; } ;
struct TYPE_5__ {int datum; int is_null; int type_oid; } ;
typedef TYPE_1__ PolyDatum ;
typedef TYPE_2__* FunctionCallInfo ;


 int PG_ARGISNULL (int) ;
 int PG_GETARG_DATUM (int) ;
 int PointerGetDatum (int *) ;
 int get_fn_expr_argtype (int ,int) ;

__attribute__((used)) static PolyDatum
polydatum_from_arg(int argno, FunctionCallInfo fcinfo)
{
 PolyDatum value;

 value.type_oid = get_fn_expr_argtype(fcinfo->flinfo, argno);
 value.is_null = PG_ARGISNULL(argno);
 if (!value.is_null)
  value.datum = PG_GETARG_DATUM(argno);
 else
  value.datum = PointerGetDatum(((void*)0));
 return value;
}
