
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;
typedef int INT ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

LPWSTR MCI_strdupAtoW( LPCSTR str )
{
    LPWSTR ret;
    INT len;

    if (!str) return ((void*)0);
    len = MultiByteToWideChar( CP_ACP, 0, str, -1, ((void*)0), 0 );
    ret = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) );
    if (ret) MultiByteToWideChar( CP_ACP, 0, str, -1, ret, len );
    return ret;
}
