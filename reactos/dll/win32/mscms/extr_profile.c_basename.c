
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef char* LPCWSTR ;
typedef int INT ;


 int lstrcpyW (int ,char*) ;
 int lstrlenW (char*) ;

__attribute__((used)) static void basename( LPCWSTR path, LPWSTR name )
{
    INT i = lstrlenW( path );

    while (i > 0 && path[i - 1] != '\\' && path[i - 1] != '/') i--;
    lstrcpyW( name, &path[i] );
}
