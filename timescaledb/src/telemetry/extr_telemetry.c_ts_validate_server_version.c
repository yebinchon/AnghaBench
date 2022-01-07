
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* errhint; int * versionstr; } ;
typedef TYPE_1__ VersionResult ;
typedef int Datum ;


 int CStringGetTextDatum (char const*) ;
 int DatumGetTextPP (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int MAX_VERSION_STR_LEN ;
 int PointerGetDatum (int ) ;
 int TS_VERSION_JSON_FIELD ;
 int char_in_valid_version_digits (int ) ;
 int cstring_to_text (int ) ;
 int isalpha (int ) ;
 int isdigit (int ) ;
 int json_object_field_text ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (int *) ;
 int * text_to_cstring (int ) ;

bool
ts_validate_server_version(const char *json, VersionResult *result)
{
 int i;
 Datum version = DirectFunctionCall2(json_object_field_text,
          CStringGetTextDatum(json),
          PointerGetDatum(cstring_to_text(TS_VERSION_JSON_FIELD)));

 memset(result, 0, sizeof(VersionResult));

 result->versionstr = text_to_cstring(DatumGetTextPP(version));

 if (result->versionstr == ((void*)0))
 {
  result->errhint = "no version string in response";
  return 0;
 }

 if (strlen(result->versionstr) > MAX_VERSION_STR_LEN)
 {
  result->errhint = "version string is too long";
  return 0;
 }

 for (i = 0; i < strlen(result->versionstr); i++)
 {
  if (!isalpha(result->versionstr[i]) && !isdigit(result->versionstr[i]) &&
   !char_in_valid_version_digits(result->versionstr[i]))
  {
   result->errhint = "version string has invalid characters";
   return 0;
  }
 }

 return 1;
}
