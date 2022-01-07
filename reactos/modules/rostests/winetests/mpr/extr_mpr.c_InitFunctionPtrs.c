
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 int MPR_GET_PROC (int ) ;
 int WNetCachePassword ;
 int WNetEnumCachedPasswords ;
 int WNetGetCachedPassword ;
 int WNetRemoveCachedPassword ;
 int WNetUseConnectionA ;

__attribute__((used)) static void InitFunctionPtrs(void)
{
    HMODULE hmpr = GetModuleHandleA("mpr.dll");

    MPR_GET_PROC(WNetCachePassword);
    MPR_GET_PROC(WNetGetCachedPassword);
    MPR_GET_PROC(WNetEnumCachedPasswords);
    MPR_GET_PROC(WNetRemoveCachedPassword);
    MPR_GET_PROC(WNetUseConnectionA);
}
