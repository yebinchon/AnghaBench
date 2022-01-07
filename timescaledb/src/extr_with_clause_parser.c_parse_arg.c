
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type_id; } ;
typedef TYPE_1__ WithClauseDefinition ;
struct TYPE_9__ {int defname; int defnamespace; int * arg; } ;
struct TYPE_8__ {int typname; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_type ;
typedef TYPE_3__ DefElem ;
typedef int Datum ;


 int Assert (int ) ;
 scalar_t__ BOOLOID ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidInputFunctionCall (scalar_t__,char*,scalar_t__,int) ;
 int OidIsValid (scalar_t__) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 char* defGetString (TYPE_3__*) ;
 int elog (int ,char*,int ,int ,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ,int ,int ) ;
 int errmsg (char*,int ,int ,...) ;
 int getTypeInputInfo (scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static Datum
parse_arg(WithClauseDefinition arg, DefElem *def)
{
 char *value;
 Datum val;
 Oid in_fn;
 Oid typIOParam;

 if (!OidIsValid(arg.type_id))
  elog(ERROR, "argument \"%s.%s\" not implemented", def->defnamespace, def->defname);

 if (def->arg != ((void*)0))
  value = defGetString(def);
 else if (arg.type_id == BOOLOID)


  value = "true";
 else
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("parameter \"%s.%s\" must have a value", def->defnamespace, def->defname)));

 getTypeInputInfo(arg.type_id, &in_fn, &typIOParam);

 Assert(OidIsValid(in_fn));

 PG_TRY();
 {
  val = OidInputFunctionCall(in_fn, value, typIOParam, -1);
 }
 PG_CATCH();
 {
  Form_pg_type typetup;
  HeapTuple tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(arg.type_id));
  if (!HeapTupleIsValid(tup))
   elog(ERROR,
     "cache lookup failed for type of %s.%s '%u'",
     def->defnamespace,
     def->defname,
     arg.type_id);

  typetup = (Form_pg_type) GETSTRUCT(tup);

  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid value for %s.%s '%s'", def->defnamespace, def->defname, value),
     errhint("%s.%s must be a valid %s",
       def->defnamespace,
       def->defname,
       NameStr(typetup->typname))));
 }
 PG_END_TRY();
 return val;
}
