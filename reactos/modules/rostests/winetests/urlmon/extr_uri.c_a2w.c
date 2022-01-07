
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int *,int) ;

__attribute__((used)) static inline LPWSTR a2w(LPCSTR str) {
    LPWSTR ret = ((void*)0);

    if(str) {
        DWORD len = MultiByteToWideChar(CP_UTF8, 0, str, -1, ((void*)0), 0);
        ret = HeapAlloc(GetProcessHeap(), 0, len*sizeof(WCHAR));
        MultiByteToWideChar(CP_UTF8, 0, str, -1, ret, len);
    }

    return ret;
}
