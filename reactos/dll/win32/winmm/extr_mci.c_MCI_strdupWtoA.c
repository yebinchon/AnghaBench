
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int INT ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int ,int *,int *) ;

LPSTR MCI_strdupWtoA( LPCWSTR str )
{
    LPSTR ret;
    INT len;

    if (!str) return ((void*)0);
    len = WideCharToMultiByte( CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
    ret = HeapAlloc( GetProcessHeap(), 0, len );
    if (ret) WideCharToMultiByte( CP_ACP, 0, str, -1, ret, len, ((void*)0), ((void*)0) );
    return ret;
}
