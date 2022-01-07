
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LicenseInfo ;
typedef int Jsonb ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 scalar_t__ DatumGetPointer (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int EmitErrorReport () ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 char* base64_decode (char*) ;
 int jsonb_in ;
 int license_info_init_from_jsonb (int *,int *) ;

__attribute__((used)) static bool
license_info_init_from_base64(char *license_key, LicenseInfo *out)
{
 char *expanded = base64_decode(license_key);

 if (expanded == ((void*)0))
  return 0;

 PG_TRY();
 {
  Datum json_key = DirectFunctionCall1(jsonb_in, CStringGetDatum(expanded));

  license_info_init_from_jsonb((Jsonb *) DatumGetPointer(json_key), out);
 }
 PG_CATCH();
 {



  return 0;
 }
 PG_END_TRY();
 return 1;
}
