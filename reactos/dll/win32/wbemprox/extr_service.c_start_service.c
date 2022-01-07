
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef int UINT ;
typedef int * SC_HANDLE ;
typedef int HRESULT ;


 int CloseServiceHandle (int *) ;
 int GetLastError () ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int * OpenServiceW (int *,int const*,int ) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICE_START ;
 int S_OK ;
 int StartServiceW (int *,int ,int *) ;
 int VT_UI4 ;
 int map_error (int ) ;
 int set_variant (int ,int ,int *,int *) ;

__attribute__((used)) static HRESULT start_service( const WCHAR *name, VARIANT *retval )
{
    SC_HANDLE manager, service = ((void*)0);
    UINT error = 0;

    if (!(manager = OpenSCManagerW( ((void*)0), ((void*)0), SC_MANAGER_ENUMERATE_SERVICE )))
    {
        error = map_error( GetLastError() );
        goto done;
    }
    if (!(service = OpenServiceW( manager, name, SERVICE_START )))
    {
        error = map_error( GetLastError() );
        goto done;
    }
    if (!StartServiceW( service, 0, ((void*)0) )) error = map_error( GetLastError() );
    CloseServiceHandle( service );

done:
    set_variant( VT_UI4, error, ((void*)0), retval );
    if (manager) CloseServiceHandle( manager );
    return S_OK;
}
