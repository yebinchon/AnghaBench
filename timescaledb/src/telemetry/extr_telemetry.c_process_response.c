
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int versionstr; int errhint; } ;
typedef TYPE_1__ VersionResult ;


 int CStringGetTextDatum (char const*) ;
 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int EXTENSION_NAME ;
 int LOG ;
 int NOTICE ;
 int PointerGetDatum (int ) ;
 int TIMESCALEDB_VERSION_MOD ;
 char* TS_IS_UPTODATE_JSON_FIELD ;
 int WARNING ;
 int cstring_to_text (char*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errhint (char*,int ,int ) ;
 int errmsg (char*,int ) ;
 int json_object_field_text ;
 int texteq ;
 int ts_validate_server_version (char const*,TYPE_1__*) ;

__attribute__((used)) static void
process_response(const char *json)
{
 VersionResult result;
 bool is_uptodate =
  DatumGetBool(DirectFunctionCall2(texteq,
           DirectFunctionCall2(json_object_field_text,
                CStringGetTextDatum(json),
                PointerGetDatum(cstring_to_text(
                 TS_IS_UPTODATE_JSON_FIELD))),
           PointerGetDatum(cstring_to_text("true"))));

 if (is_uptodate)
  elog(NOTICE, "the \"%s\" extension is up-to-date", EXTENSION_NAME);
 else
 {
  if (!ts_validate_server_version(json, &result))
  {
   elog(WARNING, "server did not return a valid TimescaleDB version: %s", result.errhint);
   return;
  }

  ereport(LOG,
    (errmsg("the \"%s\" extension is not up-to-date", EXTENSION_NAME),
     errhint("The most up-to-date version is %s, the installed version is %s",
       result.versionstr,
       TIMESCALEDB_VERSION_MOD)));
 }
}
