
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int ,int *,int *) ;

__attribute__((used)) static LPSTR convert_from_unicode(LPCWSTR wstr)
{
    LPSTR str;
    DWORD len;

    if (!wstr)
        return ((void*)0);

    len = WideCharToMultiByte(CP_ACP, 0, wstr, -1, ((void*)0), 0, ((void*)0), ((void*)0));
    str = HeapAlloc(GetProcessHeap(), 0, len);
    WideCharToMultiByte(CP_ACP, 0, wstr, -1, str, len, ((void*)0), ((void*)0));

    return str;
}
