
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWCHAR ;
typedef int BOOL ;


 int BCD ;
 int BCDPath ;
 int FALSE ;
 int HKCR ;
 int HKCRPath ;
 int HKCU ;
 int HKCUPath ;
 int HKLM ;
 int HKLMPath ;
 int HKR ;
 int HKU ;
 int HKUPath ;
 int TRUE ;
 int strcmpiW (int ,int ) ;
 int strcpyW (int ,int ) ;

__attribute__((used)) static BOOL
get_root_key(PWCHAR Name)
{
    if (!strcmpiW(Name, HKCR))
    {
        strcpyW(Name, HKCRPath);
        return TRUE;
    }

    if (!strcmpiW(Name, HKCU))
    {
        strcpyW(Name, HKCUPath);
        return TRUE;
    }

    if (!strcmpiW(Name, HKLM))
    {
        strcpyW(Name, HKLMPath);
        return TRUE;
    }

    if (!strcmpiW(Name, HKU))
    {
        strcpyW(Name, HKUPath);
        return TRUE;
    }

    if (!strcmpiW(Name, BCD))
    {
        strcpyW(Name, BCDPath);
        return TRUE;
    }






  return FALSE;
}
