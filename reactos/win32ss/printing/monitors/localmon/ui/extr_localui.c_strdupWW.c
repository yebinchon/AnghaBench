
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int lstrcatW (scalar_t__,int ) ;
 int lstrcpyW (scalar_t__,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static LPWSTR strdupWW(LPCWSTR pPrefix, LPCWSTR pSuffix)
{
    LPWSTR ptr;
    DWORD len;

    len = lstrlenW(pPrefix) + (pSuffix ? lstrlenW(pSuffix) : 0) + 1;
    ptr = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
    if (ptr) {
        lstrcpyW(ptr, pPrefix);
        if (pSuffix) lstrcatW(ptr, pSuffix);
    }
    return ptr;
}
