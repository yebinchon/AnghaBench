
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FuncExpr ;
typedef int Aggref ;


 int ANYELEMENTOID ;
 int BYTEAOID ;
 int COERCE_EXPLICIT_CALL ;
 int INTERNAL_SCHEMA_NAME ;
 int InvalidOid ;
 int LookupFuncName (int ,int,int *,int) ;
 int PARTIALFN ;
 int list_make1 (int *) ;
 int list_make2 (int ,int ) ;
 int * makeFuncExpr (int ,int ,int ,int ,int ,int ) ;
 int makeString (int ) ;

__attribute__((used)) static FuncExpr *
get_partialize_funcexpr(Aggref *agg)
{
 FuncExpr *partialize_fnexpr;
 Oid partfnoid, partargtype;
 partargtype = ANYELEMENTOID;
 partfnoid = LookupFuncName(list_make2(makeString(INTERNAL_SCHEMA_NAME), makeString(PARTIALFN)),
          1,
          &partargtype,
          0);
 partialize_fnexpr = makeFuncExpr(partfnoid,
          BYTEAOID,
          list_make1(agg),
          InvalidOid,
          InvalidOid,
          COERCE_EXPLICIT_CALL);
 return partialize_fnexpr;
}
