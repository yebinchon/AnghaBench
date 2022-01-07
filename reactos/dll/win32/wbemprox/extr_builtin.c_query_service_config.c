
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SC_HANDLE ;
typedef int QUERY_SERVICE_CONFIGW ;
typedef int DWORD ;


 int CloseServiceHandle (int ) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int OpenServiceW (int ,int const*,int ) ;
 scalar_t__ QueryServiceConfigW (int ,int *,int ,int *) ;
 int SERVICE_QUERY_CONFIG ;
 int * heap_alloc (int ) ;
 int heap_free (int *) ;

__attribute__((used)) static QUERY_SERVICE_CONFIGW *query_service_config( SC_HANDLE manager, const WCHAR *name )
{
    QUERY_SERVICE_CONFIGW *config = ((void*)0);
    SC_HANDLE service;
    DWORD size;

    if (!(service = OpenServiceW( manager, name, SERVICE_QUERY_CONFIG ))) return ((void*)0);
    QueryServiceConfigW( service, ((void*)0), 0, &size );
    if (GetLastError() != ERROR_INSUFFICIENT_BUFFER) goto done;
    if (!(config = heap_alloc( size ))) goto done;
    if (QueryServiceConfigW( service, config, size, &size )) goto done;
    heap_free( config );
    config = ((void*)0);

done:
    CloseServiceHandle( service );
    return config;
}
