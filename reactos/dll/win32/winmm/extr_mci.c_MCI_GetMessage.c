
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 scalar_t__ strlenW (scalar_t__) ;

__attribute__((used)) static WORD MCI_GetMessage(LPCWSTR lpCmd)
{
    return (WORD)*(const DWORD*)(lpCmd + strlenW(lpCmd) + 1);
}
