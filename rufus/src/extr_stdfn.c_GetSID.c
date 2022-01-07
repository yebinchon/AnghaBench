
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Sid; } ;
struct TYPE_6__ {TYPE_1__ User; } ;
typedef TYPE_2__ TOKEN_USER ;
typedef int * PSID ;
typedef int HANDLE ;
typedef int DWORD ;


 int ConvertSidToStringSidA (int ,char**) ;
 int ConvertStringSidToSidA (char*,int **) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetTokenInformation (int ,int ,TYPE_2__*,int ,int *) ;
 int LocalFree (char*) ;
 int OpenProcessToken (int ,int ,int *) ;
 int TOKEN_QUERY ;
 int TokenUser ;
 int WindowsErrorString () ;
 scalar_t__ calloc (int,int ) ;
 int free (TYPE_2__*) ;
 int uprintf (char*,int ) ;

__attribute__((used)) static PSID GetSID(void) {
 TOKEN_USER* tu = ((void*)0);
 DWORD len;
 HANDLE token;
 PSID ret = ((void*)0);
 char* psid_string = ((void*)0);

 if (!OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &token)) {
  uprintf("OpenProcessToken failed: %s\n", WindowsErrorString());
  return ((void*)0);
 }

 if (!GetTokenInformation(token, TokenUser, tu, 0, &len)) {
  if (GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
   uprintf("GetTokenInformation (pre) failed: %s\n", WindowsErrorString());
   return ((void*)0);
  }
  tu = (TOKEN_USER*)calloc(1, len);
 }
 if (tu == ((void*)0)) {
  return ((void*)0);
 }

 if (GetTokenInformation(token, TokenUser, tu, len, &len)) {





  if (!ConvertSidToStringSidA(tu->User.Sid, &psid_string)) {
   uprintf("Unable to convert SID to string: %s\n", WindowsErrorString());
   ret = ((void*)0);
  } else {
   if (!ConvertStringSidToSidA(psid_string, &ret)) {
    uprintf("Unable to convert string back to SID: %s\n", WindowsErrorString());
    ret = ((void*)0);
   }

   LocalFree(psid_string);
  }
 } else {
  ret = ((void*)0);
  uprintf("GetTokenInformation (real) failed: %s\n", WindowsErrorString());
 }
 free(tu);
 return ret;
}
