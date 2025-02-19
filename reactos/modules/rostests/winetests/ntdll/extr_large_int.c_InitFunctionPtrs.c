
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 scalar_t__ hntdll ;
 int ok (int,char*) ;
 void* pRtlExtendedMagicDivide ;
 void* pRtlFreeAnsiString ;
 void* pRtlInt64ToUnicodeString ;
 void* pRtlLargeIntegerToChar ;
 void* pRtlUnicodeStringToAnsiString ;
 void* p_alldvrm ;
 void* p_aulldvrm ;

__attribute__((used)) static void InitFunctionPtrs(void)
{
    hntdll = LoadLibraryA("ntdll.dll");
    ok(hntdll != 0, "LoadLibrary failed\n");
    if (hntdll) {
 pRtlExtendedMagicDivide = (void *)GetProcAddress(hntdll, "RtlExtendedMagicDivide");
 pRtlFreeAnsiString = (void *)GetProcAddress(hntdll, "RtlFreeAnsiString");
 pRtlInt64ToUnicodeString = (void *)GetProcAddress(hntdll, "RtlInt64ToUnicodeString");
 pRtlLargeIntegerToChar = (void *)GetProcAddress(hntdll, "RtlLargeIntegerToChar");
 pRtlUnicodeStringToAnsiString = (void *)GetProcAddress(hntdll, "RtlUnicodeStringToAnsiString");
        p_alldvrm = (void *)GetProcAddress(hntdll, "_alldvrm");
        p_aulldvrm = (void *)GetProcAddress(hntdll, "_aulldvrm");
    }
}
