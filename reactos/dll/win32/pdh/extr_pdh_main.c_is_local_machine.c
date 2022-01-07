
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int FALSE ;
 int GetComputerNameW (int *,scalar_t__*) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int memicmpW (int const*,int *,scalar_t__) ;

__attribute__((used)) static BOOL is_local_machine( const WCHAR *name, DWORD len )
{
    WCHAR buf[MAX_COMPUTERNAME_LENGTH + 1];
    DWORD buflen = ARRAY_SIZE(buf);

    if (!GetComputerNameW( buf, &buflen )) return FALSE;
    return len == buflen && !memicmpW( name, buf, buflen );
}
