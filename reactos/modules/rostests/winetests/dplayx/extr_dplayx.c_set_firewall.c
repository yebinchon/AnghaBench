
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum firewall_op { ____Placeholder_firewall_op } firewall_op ;
typedef char WCHAR ;
typedef int INetFwProfile ;
typedef int INetFwPolicy ;
typedef int INetFwMgr ;
typedef int INetFwAuthorizedApplications ;
typedef int INetFwAuthorizedApplication ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int APP_ADD ;
 int APP_REMOVE ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_NetFwAuthorizedApplication ;
 int CLSID_NetFwMgr ;
 int COINIT_APARTMENTTHREADED ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ CoInitializeEx (int ,int ) ;
 int CoUninitialize () ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 int GetModuleFileNameW (int *,int ,int) ;
 int GetSystemDirectoryW (char*,int) ;
 int IID_INetFwAuthorizedApplication ;
 int IID_INetFwMgr ;
 int INetFwAuthorizedApplication_Release (int *) ;
 scalar_t__ INetFwAuthorizedApplication_put_Name (int *,int ) ;
 scalar_t__ INetFwAuthorizedApplication_put_ProcessImageFileName (int *,int ) ;
 scalar_t__ INetFwAuthorizedApplications_Add (int *,int *) ;
 int INetFwAuthorizedApplications_Release (int *) ;
 scalar_t__ INetFwAuthorizedApplications_Remove (int *,int ) ;
 int INetFwMgr_Release (int *) ;
 scalar_t__ INetFwMgr_get_LocalPolicy (int *,int **) ;
 int INetFwPolicy_Release (int *) ;
 scalar_t__ INetFwPolicy_get_CurrentProfile (int *,int **) ;
 int INetFwProfile_Release (int *) ;
 scalar_t__ INetFwProfile_get_AuthorizedApplications (int *,int **) ;
 int MAX_PATH ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SysAllocString (char const*) ;
 int SysAllocStringLen (int *,int) ;
 int SysFreeString (int ) ;
 int lstrcatW (char*,char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static HRESULT set_firewall( enum firewall_op op )
{
    static const WCHAR dplaysvrW[] =
        {'d','p','l','a','y','s','v','r','.','e','x','e',0};
    static const WCHAR separator[] = {'\\',0};
    static const WCHAR clientW[] =
        {'d','p','l','a','y','_','c','l','i','e','n','t',0};
    static const WCHAR serverW[] =
        {'d','p','l','a','y','_','s','e','r','v','e','r',0};
    HRESULT hr, init;
    INetFwMgr *mgr = ((void*)0);
    INetFwPolicy *policy = ((void*)0);
    INetFwProfile *profile = ((void*)0);
    INetFwAuthorizedApplication *app = ((void*)0);
    INetFwAuthorizedApplications *apps = ((void*)0);
    BSTR name, image = SysAllocStringLen( ((void*)0), MAX_PATH );
    WCHAR path[MAX_PATH];

    if (!GetModuleFileNameW( ((void*)0), image, MAX_PATH ))
    {
        SysFreeString( image );
        return E_FAIL;
    }

    if(!GetSystemDirectoryW(path, MAX_PATH))
    {
        SysFreeString( image );
        return E_FAIL;
    }
    lstrcatW(path, separator);
    lstrcatW(path, dplaysvrW);

    init = CoInitializeEx( 0, COINIT_APARTMENTTHREADED );

    hr = CoCreateInstance( &CLSID_NetFwMgr, ((void*)0), CLSCTX_INPROC_SERVER, &IID_INetFwMgr,
                           (void **)&mgr );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = INetFwMgr_get_LocalPolicy( mgr, &policy );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = INetFwPolicy_get_CurrentProfile( policy, &profile );
    if (hr != S_OK) goto done;

    hr = INetFwProfile_get_AuthorizedApplications( profile, &apps );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = CoCreateInstance( &CLSID_NetFwAuthorizedApplication, ((void*)0), CLSCTX_INPROC_SERVER,
                           &IID_INetFwAuthorizedApplication, (void **)&app );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = INetFwAuthorizedApplication_put_ProcessImageFileName( app, image );
    if (hr != S_OK) goto done;

    name = SysAllocString( clientW );
    hr = INetFwAuthorizedApplication_put_Name( app, name );
    SysFreeString( name );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    if (op == APP_ADD)
        hr = INetFwAuthorizedApplications_Add( apps, app );
    else if (op == APP_REMOVE)
        hr = INetFwAuthorizedApplications_Remove( apps, image );
    else
        hr = E_INVALIDARG;
    if (hr != S_OK) goto done;

    INetFwAuthorizedApplication_Release( app );
    hr = CoCreateInstance( &CLSID_NetFwAuthorizedApplication, ((void*)0), CLSCTX_INPROC_SERVER,
                           &IID_INetFwAuthorizedApplication, (void **)&app );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    SysFreeString( image );
    image = SysAllocString( path );
    hr = INetFwAuthorizedApplication_put_ProcessImageFileName( app, image );
    if (hr != S_OK) goto done;

    name = SysAllocString( serverW );
    hr = INetFwAuthorizedApplication_put_Name( app, name );
    SysFreeString( name );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    if (op == APP_ADD)
        hr = INetFwAuthorizedApplications_Add( apps, app );
    else if (op == APP_REMOVE)
        hr = INetFwAuthorizedApplications_Remove( apps, image );
    else
        hr = E_INVALIDARG;

done:
    if (app) INetFwAuthorizedApplication_Release( app );
    if (apps) INetFwAuthorizedApplications_Release( apps );
    if (policy) INetFwPolicy_Release( policy );
    if (profile) INetFwProfile_Release( profile );
    if (mgr) INetFwMgr_Release( mgr );
    if (SUCCEEDED( init )) CoUninitialize();
    SysFreeString( image );
    return hr;
}
