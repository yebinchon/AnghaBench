
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int CStringGetDatum (char*) ;
 int DatumGetObjectId (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int regprocedurein ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
aggfnoid_from_aggname(text *aggfn)
{
 char *funcname = text_to_cstring(aggfn);
 Oid oid;

 oid = DatumGetObjectId(DirectFunctionCall1(regprocedurein,

              CStringGetDatum(funcname)));

 if (!OidIsValid(oid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function \"%s\" does not exist", funcname)));

 return oid;
}
