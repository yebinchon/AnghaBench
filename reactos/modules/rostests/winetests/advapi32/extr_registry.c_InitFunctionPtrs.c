
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int ADVAPI32_GET_PROC (int ) ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int RegCopyTreeA ;
 int RegDeleteKeyExA ;
 int RegDeleteKeyValueA ;
 int RegDeleteTreeA ;
 int RegGetValueA ;
 int RegSetKeyValueW ;
 void* pIsWow64Process ;
 void* pNtDeleteKey ;
 void* pRtlFormatCurrentUserKeyPath ;
 void* pRtlFreeUnicodeString ;

__attribute__((used)) static void InitFunctionPtrs(void)
{
    HMODULE hntdll = GetModuleHandleA("ntdll.dll");
    HMODULE hkernel32 = GetModuleHandleA("kernel32.dll");
    HMODULE hadvapi32 = GetModuleHandleA("advapi32.dll");


    ADVAPI32_GET_PROC(RegGetValueA);
    ADVAPI32_GET_PROC(RegCopyTreeA);
    ADVAPI32_GET_PROC(RegDeleteTreeA);
    ADVAPI32_GET_PROC(RegDeleteKeyExA);
    ADVAPI32_GET_PROC(RegDeleteKeyValueA);
    ADVAPI32_GET_PROC(RegSetKeyValueW);

    pIsWow64Process = (void *)GetProcAddress( hkernel32, "IsWow64Process" );
    pRtlFormatCurrentUserKeyPath = (void *)GetProcAddress( hntdll, "RtlFormatCurrentUserKeyPath" );
    pRtlFreeUnicodeString = (void *)GetProcAddress(hntdll, "RtlFreeUnicodeString");
    pNtDeleteKey = (void *)GetProcAddress( hntdll, "NtDeleteKey" );
}
