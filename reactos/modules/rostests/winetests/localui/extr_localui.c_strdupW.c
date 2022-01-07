
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef int LPCWSTR ;


 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int lstrcpyW (scalar_t__,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static LPWSTR strdupW(LPCWSTR strW)
{
    LPWSTR ptr;

    ptr = HeapAlloc(GetProcessHeap(), 0, (lstrlenW(strW) + 1) * sizeof(WCHAR));
    if (ptr) {
        lstrcpyW(ptr, strW);
    }
    return ptr;
}
