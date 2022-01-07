
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__ proplist; } ;
typedef scalar_t__ WCHAR ;
typedef int DWORD ;
typedef int * BSTR ;


 int ARRAY_SIZE (scalar_t__*) ;
 int GetComputerNameW (scalar_t__*,int *) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int * SysAllocString (scalar_t__*) ;
 scalar_t__ toupperW (scalar_t__) ;

__attribute__((used)) static BSTR build_servername( const struct view *view )
{
    WCHAR server[MAX_COMPUTERNAME_LENGTH + 1], *p;
    DWORD len = ARRAY_SIZE( server );

    if (view->proplist) return ((void*)0);

    if (!(GetComputerNameW( server, &len ))) return ((void*)0);
    for (p = server; *p; p++) *p = toupperW( *p );
    return SysAllocString( server );
}
