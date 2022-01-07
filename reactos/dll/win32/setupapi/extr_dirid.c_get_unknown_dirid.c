
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;


 int GetProcessHeap () ;
 int GetSystemDirectoryW (char*,int) ;
 char* HeapAlloc (int ,int ,int) ;
 int strcatW (char*,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static const WCHAR *get_unknown_dirid(void)
{
    static WCHAR *unknown_dirid;
    static const WCHAR unknown_str[] = {'\\','u','n','k','n','o','w','n',0};

    if (!unknown_dirid)
    {
        UINT len = GetSystemDirectoryW( ((void*)0), 0 ) + strlenW(unknown_str);
        if (!(unknown_dirid = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) ))) return ((void*)0);
        GetSystemDirectoryW( unknown_dirid, len );
        strcatW( unknown_dirid, unknown_str );
    }
    return unknown_dirid;
}
