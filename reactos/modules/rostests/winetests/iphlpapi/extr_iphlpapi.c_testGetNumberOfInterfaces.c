
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ NO_ERROR ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetNumberOfInterfaces (scalar_t__*) ;
 int skip (char*) ;

__attribute__((used)) static void testGetNumberOfInterfaces(void)
{
  if (pGetNumberOfInterfaces) {
    DWORD apiReturn, numInterfaces;


    if (0) {
      apiReturn = pGetNumberOfInterfaces(((void*)0));
      if (apiReturn == ERROR_NOT_SUPPORTED)
        return;
      ok(apiReturn == ERROR_INVALID_PARAMETER,
       "GetNumberOfInterfaces(NULL) returned %d, expected ERROR_INVALID_PARAMETER\n",
       apiReturn);
    }

    apiReturn = pGetNumberOfInterfaces(&numInterfaces);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetNumberOfInterfaces is not supported\n");
      return;
    }
    ok(apiReturn == NO_ERROR,
     "GetNumberOfInterfaces returned %d, expected 0\n", apiReturn);
  }
}
