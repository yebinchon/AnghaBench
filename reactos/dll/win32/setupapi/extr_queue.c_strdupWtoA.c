
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int ,int *,int *) ;

__attribute__((used)) static inline char *strdupWtoA( const WCHAR *str )
{
    char *ret = ((void*)0);
    if (str)
    {
        DWORD len = WideCharToMultiByte( CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
        if ((ret = HeapAlloc( GetProcessHeap(), 0, len )))
            WideCharToMultiByte( CP_ACP, 0, str, -1, ret, len, ((void*)0), ((void*)0) );
    }
    return ret;
}
