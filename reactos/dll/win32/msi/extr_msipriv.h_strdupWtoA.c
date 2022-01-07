
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int ,int *,int *) ;
 char* msi_alloc (int ) ;

__attribute__((used)) static inline char *strdupWtoA( LPCWSTR str )
{
    LPSTR ret = ((void*)0);
    DWORD len;

    if (!str) return ret;
    len = WideCharToMultiByte( CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0));
    ret = msi_alloc( len );
    if (ret)
        WideCharToMultiByte( CP_ACP, 0, str, -1, ret, len, ((void*)0), ((void*)0) );
    return ret;
}
