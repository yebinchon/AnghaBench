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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_INetFwAuthorizedApplication ; 
 int /*<<< orphan*/  IID_INetFwMgr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC21( enum firewall_op op )
{
    static const WCHAR testW[] = {'r','p','c','r','t','4','_','t','e','s','t',0};
    HRESULT hr, init;
    INetFwMgr *mgr = NULL;
    INetFwPolicy *policy = NULL;
    INetFwProfile *profile = NULL;
    INetFwAuthorizedApplication *app = NULL;
    INetFwAuthorizedApplications *apps = NULL;
    BSTR name, image = FUNC18( NULL, MAX_PATH );

    if (!FUNC3( NULL, image, MAX_PATH ))
    {
        FUNC19( image );
        return E_FAIL;
    }
    init = FUNC1( 0, COINIT_APARTMENTTHREADED );

    hr = FUNC0( &CLSID_NetFwMgr, NULL, CLSCTX_INPROC_SERVER, &IID_INetFwMgr,
                           (void **)&mgr );
    FUNC20( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC11( mgr, &policy );
    FUNC20( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC13( policy, &profile );
    if (hr != S_OK) goto done;

    hr = FUNC15( profile, &apps );
    FUNC20( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC0( &CLSID_NetFwAuthorizedApplication, NULL, CLSCTX_INPROC_SERVER,
                           &IID_INetFwAuthorizedApplication, (void **)&app );
    FUNC20( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC6( app, image );
    if (hr != S_OK) goto done;

    name = FUNC17( testW );
    hr = FUNC5( app, name );
    FUNC19( name );
    FUNC20( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    if (op == APP_ADD)
        hr = FUNC7( apps, app );
    else if (op == APP_REMOVE)
        hr = FUNC9( apps, image );
    else
        hr = E_INVALIDARG;

done:
    if (app) FUNC4( app );
    if (apps) FUNC8( apps );
    if (policy) FUNC12( policy );
    if (profile) FUNC14( profile );
    if (mgr) FUNC10( mgr );
    if (FUNC16( init )) FUNC2();
    FUNC19( image );
    return hr;
}