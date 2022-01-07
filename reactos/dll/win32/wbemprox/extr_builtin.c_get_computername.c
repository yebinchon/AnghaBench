
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int GetComputerNameW (int *,int*) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int * heap_alloc (int) ;

__attribute__((used)) static WCHAR *get_computername(void)
{
    WCHAR *ret;
    DWORD size = MAX_COMPUTERNAME_LENGTH + 1;

    if (!(ret = heap_alloc( size * sizeof(WCHAR) ))) return ((void*)0);
    GetComputerNameW( ret, &size );
    return ret;
}
