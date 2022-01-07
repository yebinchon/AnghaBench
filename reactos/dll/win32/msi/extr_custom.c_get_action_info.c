
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIHANDLE ;
typedef int LPVOID ;
typedef int IWineMsiRemotePackage ;
typedef int IWineMsiRemoteCustomAction ;
typedef int INT ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int GUID ;
typedef int BSTR ;


 int CLSID_WineMsiRemoteCustomAction ;
 int DllGetClassObject (int *,int *,int *) ;
 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IClassFactory_CreateInstance (int *,int *,int *,int *) ;
 int IID_IClassFactory ;
 int IID_IWineMsiRemoteCustomAction ;
 int IWineMsiRemoteCustomAction_GetActionInfo (int *,int const*,int *,int *,int *,int *,int **) ;
 int IWineMsiRemoteCustomAction_Release (int *) ;

__attribute__((used)) static UINT get_action_info( const GUID *guid, INT *type, MSIHANDLE *handle,
                             BSTR *dll, BSTR *funcname,
                             IWineMsiRemotePackage **package )
{
    IClassFactory *cf = ((void*)0);
    IWineMsiRemoteCustomAction *rca = ((void*)0);
    HRESULT r;

    r = DllGetClassObject( &CLSID_WineMsiRemoteCustomAction,
                           &IID_IClassFactory, (LPVOID *)&cf );
    if (FAILED(r))
    {
        ERR("failed to get IClassFactory interface\n");
        return ERROR_FUNCTION_FAILED;
    }

    r = IClassFactory_CreateInstance( cf, ((void*)0), &IID_IWineMsiRemoteCustomAction, (LPVOID *)&rca );
    if (FAILED(r))
    {
        ERR("failed to get IWineMsiRemoteCustomAction interface\n");
        return ERROR_FUNCTION_FAILED;
    }

    r = IWineMsiRemoteCustomAction_GetActionInfo( rca, guid, type, handle, dll, funcname, package );
    IWineMsiRemoteCustomAction_Release( rca );
    if (FAILED(r))
    {
        ERR("GetActionInfo failed\n");
        return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}
