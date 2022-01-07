
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int * LPCWSTR ;
typedef int INT ;


 int IS_SEPARATOR (int ) ;
 int lstrcpyW (int ,int *) ;
 int lstrlenW (int *) ;

__attribute__((used)) static void MSCMS_basenameW( LPCWSTR path, LPWSTR name )
{
    INT i = lstrlenW( path );

    while (i > 0 && !IS_SEPARATOR(path[i - 1])) i--;
    lstrcpyW( name, &path[i] );
}
