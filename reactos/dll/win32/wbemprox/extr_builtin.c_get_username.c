
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int GetComputerNameW (char*,int*) ;
 int GetUserNameW (char*,int*) ;
 char* heap_alloc (int) ;

__attribute__((used)) static WCHAR *get_username(void)
{
    WCHAR *ret;
    DWORD compsize, usersize;
    DWORD size;

    compsize = 0;
    GetComputerNameW( ((void*)0), &compsize );
    usersize = 0;
    GetUserNameW( ((void*)0), &usersize );
    size = compsize + usersize;
    if (!(ret = heap_alloc( size * sizeof(WCHAR) ))) return ((void*)0);
    GetComputerNameW( ret, &compsize );
    ret[compsize] = '\\';
    GetUserNameW( ret + compsize + 1, &usersize );
    return ret;
}
