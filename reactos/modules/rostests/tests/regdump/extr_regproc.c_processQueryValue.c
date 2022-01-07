
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char TCHAR ;
typedef int LPTSTR ;
typedef char* LPSTR ;
typedef int LPBYTE ;
typedef int LONG ;
typedef int INT ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef char BYTE ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int KEY_MAX_LEN ;
 int QUERY_VALUE_MAX_ARGS ;



 scalar_t__ RegQueryValue (int ,int ,int ,int*) ;
 scalar_t__ RegQueryValueEx (int ,char*,int *,int*,int ,int*) ;
 int _T (char*) ;
 int _tcslen (char*) ;
 int _tprintf (int ,...) ;
 char* convertHexToDWORDStr (char*,int) ;
 char* convertHexToHexCSV (char*,int) ;
 int currentKeyHandle ;
 int currentKeyName ;
 char* getArg (char*) ;
 char* getToken (int *,int ) ;
 int * queryValueDelim ;
 int strncpy (char*,char*,int) ;

void processQueryValue(LPTSTR cmdline)
{
  _tprintf(_T("ERROR!!! - temporary disabled"));

  return;
}
