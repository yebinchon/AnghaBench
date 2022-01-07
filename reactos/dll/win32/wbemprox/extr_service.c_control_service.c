
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef int UINT ;
typedef int SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef int HRESULT ;
typedef int DWORD ;


 int CloseServiceHandle (int *) ;
 int ControlService (int *,int ,int *) ;
 int GetLastError () ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int * OpenServiceW (int *,int const*,int) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICE_PAUSE_CONTINUE ;
 int SERVICE_START ;
 int SERVICE_STOP ;
 int S_OK ;
 int VT_UI4 ;
 int map_error (int ) ;
 int set_variant (int ,int ,int *,int *) ;

__attribute__((used)) static HRESULT control_service( const WCHAR *name, DWORD control, VARIANT *retval )
{
    SC_HANDLE manager, service = ((void*)0);
    SERVICE_STATUS status;
    UINT error = 0;

    if (!(manager = OpenSCManagerW( ((void*)0), ((void*)0), SC_MANAGER_ENUMERATE_SERVICE )))
    {
        error = map_error( GetLastError() );
        goto done;
    }
    if (!(service = OpenServiceW( manager, name, SERVICE_STOP|SERVICE_START|SERVICE_PAUSE_CONTINUE )))
    {
        error = map_error( GetLastError() );
        goto done;
    }
    if (!ControlService( service, control, &status )) error = map_error( GetLastError() );
    CloseServiceHandle( service );

done:
    set_variant( VT_UI4, error, ((void*)0), retval );
    if (manager) CloseServiceHandle( manager );
    return S_OK;
}
