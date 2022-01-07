
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 char* heap_alloc (int) ;
 int sprintfW (char*,char const*,int,int,int,int) ;

__attribute__((used)) static WCHAR *get_ip4_string( DWORD addr )
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','%','u','.','%','u',0};
    WCHAR *ret;

    if (!(ret = heap_alloc( sizeof("ddd.ddd.ddd.ddd") * sizeof(WCHAR) ))) return ((void*)0);
    sprintfW( ret, fmtW, (addr >> 24) & 0xff, (addr >> 16) & 0xff, (addr >> 8) & 0xff, addr & 0xff );
    return ret;
}
