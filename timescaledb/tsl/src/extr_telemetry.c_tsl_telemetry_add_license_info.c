
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbParseState ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 char* LICENSE_EDITION_COMMUNITY ;
 char* LICENSE_EDITION_ENTERPRISE ;
 int LICENSE_EDITION_KEY ;
 int LICENSE_END_TIME_KEY ;
 int LICENSE_ID_KEY ;
 int LICENSE_KIND_KEY ;
 int LICENSE_START_TIME_KEY ;
 int TimestampTzGetDatum (int ) ;
 int license_end_time () ;
 int license_enterprise_enabled () ;
 char* license_id_str () ;
 char* license_kind_str () ;
 int license_start_time () ;
 int timestamptz_out ;
 int ts_jsonb_add_str (int *,int ,char*) ;

void
tsl_telemetry_add_license_info(JsonbParseState *parseState)
{
 if (!license_enterprise_enabled())
  ts_jsonb_add_str(parseState, LICENSE_EDITION_KEY, LICENSE_EDITION_COMMUNITY);
 else
 {
  char *start_time = DatumGetCString(
   DirectFunctionCall1(timestamptz_out, TimestampTzGetDatum(license_start_time())));
  char *end_time = DatumGetCString(
   DirectFunctionCall1(timestamptz_out, TimestampTzGetDatum(license_end_time())));

  ts_jsonb_add_str(parseState, LICENSE_EDITION_KEY, LICENSE_EDITION_ENTERPRISE);
  ts_jsonb_add_str(parseState, LICENSE_KIND_KEY, license_kind_str());
  ts_jsonb_add_str(parseState, LICENSE_ID_KEY, license_id_str());
  ts_jsonb_add_str(parseState, LICENSE_START_TIME_KEY, start_time);
  ts_jsonb_add_str(parseState, LICENSE_END_TIME_KEY, end_time);
 }
}
