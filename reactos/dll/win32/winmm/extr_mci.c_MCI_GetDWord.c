
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWSTR ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strtoulW (int*,int**,int ) ;

__attribute__((used)) static BOOL MCI_GetDWord(DWORD_PTR *data, LPWSTR* ptr)
{
    DWORD val;
    LPWSTR ret;

    val = strtoulW(*ptr, &ret, 0);

    switch (*ret) {
    case '\0': break;
    case ' ': ret++; break;
    default: return FALSE;
    }

    *data |= val;
    *ptr = ret;
    return TRUE;
}
