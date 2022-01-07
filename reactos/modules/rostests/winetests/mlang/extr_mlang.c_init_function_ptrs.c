
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int BOOL ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int TRUE ;
 void* pConvertINetMultiByteToUnicode ;
 void* pConvertINetUnicodeToMultiByte ;
 void* pGetCPInfoExA ;
 void* pLcidToRfc1766A ;
 void* pRfc1766ToLcidA ;

__attribute__((used)) static BOOL init_function_ptrs(void)
{
    HMODULE hMlang;

    hMlang = GetModuleHandleA("mlang.dll");
    pConvertINetMultiByteToUnicode = (void *)GetProcAddress(hMlang, "ConvertINetMultiByteToUnicode");
    pConvertINetUnicodeToMultiByte = (void *)GetProcAddress(hMlang, "ConvertINetUnicodeToMultiByte");
    pRfc1766ToLcidA = (void *)GetProcAddress(hMlang, "Rfc1766ToLcidA");
    pLcidToRfc1766A = (void *)GetProcAddress(hMlang, "LcidToRfc1766A");

    pGetCPInfoExA = (void *)GetProcAddress(GetModuleHandleA("kernel32.dll"), "GetCPInfoExA");

    return TRUE;
}
