
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int BOOL ;


 int FALSE ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int TRUE ;
 void* pGetProcessHandleFromHwnd ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init(void)
{
    HMODULE oleacc = GetModuleHandleA("oleacc.dll");

    pGetProcessHandleFromHwnd = (void*)GetProcAddress(oleacc, "GetProcessHandleFromHwnd");
    if(!pGetProcessHandleFromHwnd) {
        win_skip("GetProcessHandleFromHwnd not available\n");
        return FALSE;
    }

    return TRUE;
}
