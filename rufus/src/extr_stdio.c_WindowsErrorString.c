
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_string ;
typedef size_t DWORD ;


 scalar_t__ FACILITY_ITF ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 size_t FormatMessageU (int,int *,int ,int ,char*,size_t,int *) ;
 size_t GetLastError () ;
 int * GetVdsError (size_t) ;
 int HRESULT_CODE (size_t) ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 scalar_t__ SCODE_FACILITY (size_t) ;
 int SUBLANG_DEFAULT ;
 int SetLastError (size_t) ;
 int assert (int) ;
 int static_sprintf (char*,char*,size_t,...) ;
 scalar_t__ strlen (char*) ;

const char *WindowsErrorString(void)
{
 static char err_string[256] = { 0 };

 DWORD size, presize;
 DWORD error_code, format_error;

 error_code = GetLastError();

 if ((SCODE_FACILITY(error_code) == FACILITY_ITF) && (GetVdsError(error_code) != ((void*)0))) {
  static_sprintf(err_string, "[0x%08lX] %s", error_code, GetVdsError(error_code));
  return err_string;
 }

 static_sprintf(err_string, "[0x%08lX] ", error_code);
 presize = (DWORD)strlen(err_string);

 size = FormatMessageU(FORMAT_MESSAGE_FROM_SYSTEM|FORMAT_MESSAGE_IGNORE_INSERTS, ((void*)0), HRESULT_CODE(error_code),
  MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), &err_string[presize],
  sizeof(err_string)-(DWORD)strlen(err_string), ((void*)0));
 if (size == 0) {
  format_error = GetLastError();
  if ((format_error) && (format_error != 0x13D))
   static_sprintf(err_string, "Windows error code 0x%08lX (FormatMessage error code 0x%08lX)",
    error_code, format_error);
  else
   static_sprintf(err_string, "Unknown error 0x%08lX", error_code);
 } else {

  assert(presize > 2);
  size += presize - 2;

  while ((err_string[size] == 0x0D) || (err_string[size] == 0x0A) || (err_string[size] == 0x20))
   err_string[size--] = 0;
 }

 SetLastError(error_code);
 return err_string;
}
