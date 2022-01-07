
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PWSTR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int Buffer ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ REG_SZ ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ wcstoul (int *,int *,int) ;

DWORD ReadSZFlagsFromRegistry(HKEY SubKey, PWSTR Value)
{
    WCHAR Buffer[20] = { 0 };
    DWORD Len, Flags, Type;

    Len = sizeof(Buffer) - sizeof(WCHAR);
    Flags = 0;
    if (RegQueryValueExW(SubKey, Value, ((void*)0), &Type, (BYTE*)Buffer, &Len) == ERROR_SUCCESS && Type == REG_SZ)
    {
        Flags = wcstoul(Buffer, ((void*)0), 16);
    }

    return Flags;
}
