
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;

__attribute__((used)) inline static WCHAR *strdupAtoW( const char *str )
{
    WCHAR *ret = ((void*)0);
    if (str)
    {
        DWORD len = MultiByteToWideChar( CP_ACP, 0, str, -1, ((void*)0), 0 );
        if ((ret = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) )))
            MultiByteToWideChar( CP_ACP, 0, str, -1, ret, len );
    }
    return ret;
}
