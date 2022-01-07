
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PFIXED_INFO ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ NO_ERROR ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetNetworkParams (int *,int *) ;
 int skip (char*) ;

__attribute__((used)) static void testGetNetworkParams(void)
{
  if (pGetNetworkParams) {
    DWORD apiReturn;
    ULONG len = 0;

    apiReturn = pGetNetworkParams(((void*)0), ((void*)0));
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetNetworkParams is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetNetworkParams returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetNetworkParams(((void*)0), &len);
    ok(apiReturn == ERROR_BUFFER_OVERFLOW,
     "GetNetworkParams returned %d, expected ERROR_BUFFER_OVERFLOW\n",
     apiReturn);
    if (apiReturn == ERROR_BUFFER_OVERFLOW) {
      PFIXED_INFO buf = HeapAlloc(GetProcessHeap(), 0, len);

      apiReturn = pGetNetworkParams(buf, &len);
      ok(apiReturn == NO_ERROR,
       "GetNetworkParams(buf, &dwSize) returned %d, expected NO_ERROR\n",
       apiReturn);
      HeapFree(GetProcessHeap(), 0, buf);
    }
  }
}
