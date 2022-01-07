
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

__attribute__((used)) static LPWSTR convert_to_unicode(LPSTR str)
{
    LPWSTR wstr;
    DWORD len;

    if (!str)
        return ((void*)0);

    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    wstr = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
    MultiByteToWideChar(CP_ACP, 0, str, -1, wstr, len);

    return wstr;
}
