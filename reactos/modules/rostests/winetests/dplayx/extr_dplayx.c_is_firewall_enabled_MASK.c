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
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  INetFwProfile ;
typedef  int /*<<< orphan*/  INetFwPolicy ;
typedef  int /*<<< orphan*/  INetFwMgr ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_NetFwMgr ; 
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  IID_INetFwMgr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ VARIANT_FALSE ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC11(void)
{
    HRESULT hr, init;
    INetFwMgr *mgr = NULL;
    INetFwPolicy *policy = NULL;
    INetFwProfile *profile = NULL;
    VARIANT_BOOL enabled = VARIANT_FALSE;

    init = FUNC1( 0, COINIT_APARTMENTTHREADED );

    hr = FUNC0( &CLSID_NetFwMgr, NULL, CLSCTX_INPROC_SERVER, &IID_INetFwMgr,
                           (void **)&mgr );
    FUNC10( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC4( mgr, &policy );
    FUNC10( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = FUNC6( policy, &profile );
    if (hr != S_OK) goto done;

    hr = FUNC8( profile, &enabled );
    FUNC10( hr == S_OK, "got %08x\n", hr );

done:
    if (policy) FUNC5( policy );
    if (profile) FUNC7( profile );
    if (mgr) FUNC3( mgr );
    if (FUNC9( init )) FUNC2();
    return (enabled == VARIANT_TRUE);
}