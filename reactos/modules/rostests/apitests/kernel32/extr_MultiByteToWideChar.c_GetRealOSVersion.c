
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int osvi ;
struct TYPE_4__ {int dwOSVersionInfoSize; int member_0; } ;
typedef TYPE_1__ RTL_OSVERSIONINFOW ;
typedef scalar_t__ (* RTLGETVERSION ) (TYPE_1__*) ;
typedef scalar_t__ HINSTANCE ;


 int FreeLibrary (scalar_t__) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryW (char*) ;
 scalar_t__ STATUS_SUCCESS ;

__attribute__((used)) static RTL_OSVERSIONINFOW *GetRealOSVersion(void)
{
    static RTL_OSVERSIONINFOW osvi = { 0 };
    RTL_OSVERSIONINFOW *ptr = ((void*)0);
    HINSTANCE hNTDLL = LoadLibraryW(L"ntdll.dll");
    RTLGETVERSION fn;
    if (hNTDLL)
    {
        fn = (RTLGETVERSION)GetProcAddress(hNTDLL, "RtlGetVersion");
        if (fn)
        {
            osvi.dwOSVersionInfoSize = sizeof(osvi);
            if (fn(&osvi) == STATUS_SUCCESS)
            {
                ptr = &osvi;
            }
        }
        FreeLibrary(hNTDLL);
    }
    return ptr;
}
