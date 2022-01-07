
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 int GetCommandLineW () ;
 scalar_t__ GetCurrentProcessId () ;
 int * heap_strdupW (int ) ;

__attribute__((used)) static WCHAR *get_cmdline( DWORD process_id )
{
    if (process_id == GetCurrentProcessId()) return heap_strdupW( GetCommandLineW() );
    return ((void*)0);
}
