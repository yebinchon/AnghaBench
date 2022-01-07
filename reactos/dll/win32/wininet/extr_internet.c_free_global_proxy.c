
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnterCriticalSection (int *) ;
 int FreeProxyInfo (scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int WININET_cs ;
 scalar_t__ global_proxy ;
 int heap_free (scalar_t__) ;

__attribute__((used)) static void free_global_proxy( void )
{
    EnterCriticalSection( &WININET_cs );
    if (global_proxy)
    {
        FreeProxyInfo( global_proxy );
        heap_free( global_proxy );
    }
    LeaveCriticalSection( &WININET_cs );
}
