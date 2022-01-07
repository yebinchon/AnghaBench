
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;
typedef int DWORD ;


 int FIXME (char*,int ) ;
 int GetProcessHeap () ;
 int const* HeapAlloc (int ,int ,int) ;
 int MAX_PATH ;
 int SHGetSpecialFolderPathW (int *,int const*,int ,int ) ;
 int TRUE ;
 int const* get_unknown_dirid () ;
 int memcpy (int const*,int const*,int) ;
 int strlenW (int const*) ;

__attribute__((used)) static const WCHAR *get_csidl_dir( DWORD csidl )
{
    WCHAR buffer[MAX_PATH], *str;
    int len;

    if (!SHGetSpecialFolderPathW( ((void*)0), buffer, csidl, TRUE ))
    {
        FIXME( "CSIDL %x not found\n", csidl );
        return get_unknown_dirid();
    }
    len = (strlenW(buffer) + 1) * sizeof(WCHAR);
    if ((str = HeapAlloc( GetProcessHeap(), 0, len ))) memcpy( str, buffer, len );
    return str;
}
