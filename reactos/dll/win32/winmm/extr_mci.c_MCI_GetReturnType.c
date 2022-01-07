
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef char* LPCWSTR ;
typedef long const DWORD ;
typedef int BYTE ;


 scalar_t__ const MCI_RETURN ;
 int strlenW (char*) ;

__attribute__((used)) static DWORD MCI_GetReturnType(LPCWSTR lpCmd)
{
    lpCmd = (LPCWSTR)((const BYTE*)(lpCmd + strlenW(lpCmd) + 1) + sizeof(DWORD) + sizeof(WORD));
    if (*lpCmd == '\0' && *(const WORD*)((const BYTE*)(lpCmd + 1) + sizeof(DWORD)) == MCI_RETURN) {
 return *(const DWORD*)(lpCmd + 1);
    }
    return 0L;
}
