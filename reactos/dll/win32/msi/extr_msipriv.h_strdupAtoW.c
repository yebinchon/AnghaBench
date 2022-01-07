
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int * msi_alloc (int) ;

__attribute__((used)) static inline LPWSTR strdupAtoW( LPCSTR str )
{
    LPWSTR ret = ((void*)0);
    DWORD len;

    if (!str) return ret;
    len = MultiByteToWideChar( CP_ACP, 0, str, -1, ((void*)0), 0 );
    ret = msi_alloc( len * sizeof(WCHAR) );
    if (ret)
        MultiByteToWideChar( CP_ACP, 0, str, -1, ret, len );
    return ret;
}
