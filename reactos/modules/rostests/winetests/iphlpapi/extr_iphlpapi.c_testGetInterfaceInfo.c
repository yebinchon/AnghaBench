
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PIP_INTERFACE_INFO ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ NO_ERROR ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetInterfaceInfo (int *,int *) ;
 int skip (char*) ;

__attribute__((used)) static void testGetInterfaceInfo(void)
{
  if (pGetInterfaceInfo) {
    DWORD apiReturn;
    ULONG len = 0;

    apiReturn = pGetInterfaceInfo(((void*)0), ((void*)0));
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetInterfaceInfo is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetInterfaceInfo returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetInterfaceInfo(((void*)0), &len);
    ok(apiReturn == ERROR_INSUFFICIENT_BUFFER,
     "GetInterfaceInfo returned %d, expected ERROR_INSUFFICIENT_BUFFER\n",
     apiReturn);
    if (apiReturn == ERROR_INSUFFICIENT_BUFFER) {
      PIP_INTERFACE_INFO buf = HeapAlloc(GetProcessHeap(), 0, len);

      apiReturn = pGetInterfaceInfo(buf, &len);
      ok(apiReturn == NO_ERROR,
       "GetInterfaceInfo(buf, &dwSize) returned %d, expected NO_ERROR\n",
       apiReturn);
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
