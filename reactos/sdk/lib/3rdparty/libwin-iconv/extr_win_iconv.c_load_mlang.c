
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RFC1766TOLCIDA ;
typedef scalar_t__ LCIDTORFC1766A ;
typedef scalar_t__ ISCONVERTINETSTRINGAVAILABLE ;
typedef int HMODULE ;
typedef scalar_t__ CONVERTINETUNICODETOMULTIBYTE ;
typedef int * CONVERTINETSTRING ;
typedef scalar_t__ CONVERTINETMULTIBYTETOUNICODE ;


 scalar_t__ ConvertINetMultiByteToUnicode ;
 int * ConvertINetString ;
 scalar_t__ ConvertINetUnicodeToMultiByte ;
 int FALSE ;
 scalar_t__ GetProcAddressA (int ,char*) ;
 scalar_t__ IsConvertINetStringAvailable ;
 scalar_t__ LcidToRfc1766A ;
 int LoadLibrary (int ) ;
 scalar_t__ Rfc1766ToLcidA ;
 int TEXT (char*) ;
 int TRUE ;

__attribute__((used)) static int
load_mlang(void)
{
    HMODULE h;
    if (ConvertINetString != ((void*)0))
        return TRUE;
    h = LoadLibrary(TEXT("mlang.dll"));
    if (!h)
        return FALSE;
    ConvertINetString = (CONVERTINETSTRING)GetProcAddressA(h, "ConvertINetString");
    ConvertINetMultiByteToUnicode = (CONVERTINETMULTIBYTETOUNICODE)GetProcAddressA(h, "ConvertINetMultiByteToUnicode");
    ConvertINetUnicodeToMultiByte = (CONVERTINETUNICODETOMULTIBYTE)GetProcAddressA(h, "ConvertINetUnicodeToMultiByte");
    IsConvertINetStringAvailable = (ISCONVERTINETSTRINGAVAILABLE)GetProcAddressA(h, "IsConvertINetStringAvailable");
    LcidToRfc1766A = (LCIDTORFC1766A)GetProcAddressA(h, "LcidToRfc1766A");
    Rfc1766ToLcidA = (RFC1766TOLCIDA)GetProcAddressA(h, "Rfc1766ToLcidA");
    return TRUE;
}
