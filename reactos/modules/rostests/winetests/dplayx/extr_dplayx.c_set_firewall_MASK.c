#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum firewall_op { ____Placeholder_firewall_op } firewall_op ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  INetFwProfile ;
typedef  int /*<<< orphan*/  INetFwPolicy ;
typedef  int /*<<< orphan*/  INetFwMgr ;
typedef  int /*<<< orphan*/  INetFwAuthorizedApplications ;
typedef  int /*<<< orphan*/  INetFwAuthorizedApplication ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int APP_ADD ; 
 int APP_REMOVE ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_NetFwAuthorizedApplication ; 
 int /*<<< orphan*/  CLSID_NetFwMgr ; 
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  IID_INetFwAuthorizedApplication ; 
 int /*<<< orphan*/  IID_INetFwMgr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC23( enum firewall_op op )
{
    static const WCHAR dplaysvrW[] =
        {'d','p','l','a','y','s','v','r','.','e','x','e',0};
    static const WCHAR separator[] = {'\\',0};
    static const WCHAR clientW[] =
        {'d','p','l','a','y','_','c','l','i','e','n','t',0};
    static const WCHAR serverW[] =
        {'d','p','l','a','y','_','s','e','r','v','e','r',0};
    HRESULT hr, init;
    INetFwMgr *mgr = NULL;
    INetFwPolicy *policy = NULL;
    INetFwProfile *profile = NULL;
    INetFwAuthorizedApplication *app = NULL;
    INetFwAuthorizedApplications *apps = NULL;
    BSTR name, image = FUNC19( NULL, MAX_PATH );
    WCHAR path[MAX_PATH];

    if (!FUNC3( NULL, image, MAX_PATH ))
    {
        FUNC20( image );
        return E_FAIL;
    }

    if(!FUNC4(path, MAX_PATH))
    {
        FUNC20( image );
        return E_FAIL;
    }
    FUNC21(path, separator);
    FUNC21(path, dplaysvrW);

    init = FUNC1( 0, COINIT_APARTMENTTHREADED );

    hr = FUNC0( &CLSID_NetFwMgr, NULL, CLSCTX_INPROC_SERVER, &IID_INetFwMgr,
                           (void **)&mgr );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC12( mgr, &policy );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC14( policy, &profile );
    if (hr != S_OK) goto done;

    hr = FUNC16( profile, &apps );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC0( &CLSID_NetFwAuthorizedApplication, NULL, CLSCTX_INPROC_SERVER,
                           &IID_INetFwAuthorizedApplication, (void **)&app );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC7( app, image );
    if (hr != S_OK) goto done;

    name = FUNC18( clientW );
    hr = FUNC6( app, name );
    FUNC20( name );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    if (op == APP_ADD)
        hr = FUNC8( apps, app );
    else if (op == APP_REMOVE)
        hr = FUNC10( apps, image );
    else
        hr = E_INVALIDARG;
    if (hr != S_OK) goto done;

    FUNC5( app );
    hr = FUNC0( &CLSID_NetFwAuthorizedApplication, NULL, CLSCTX_INPROC_SERVER,
                           &IID_INetFwAuthorizedApplication, (void **)&app );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    FUNC20( image );
    image = FUNC18( path );
    hr = FUNC7( app, image );
    if (hr != S_OK) goto done;

    name = FUNC18( serverW );
    hr = FUNC6( app, name );
    FUNC20( name );
    FUNC22( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    if (op == APP_ADD)
        hr = FUNC8( apps, app );
    else if (op == APP_REMOVE)
        hr = FUNC10( apps, image );
    else
        hr = E_INVALIDARG;

done:
    if (app) FUNC5( app );
    if (apps) FUNC9( apps );
    if (policy) FUNC13( policy );
    if (profile) FUNC15( profile );
    if (mgr) FUNC11( mgr );
    if (FUNC17( init )) FUNC2();
    FUNC20( image );
    return hr;
}