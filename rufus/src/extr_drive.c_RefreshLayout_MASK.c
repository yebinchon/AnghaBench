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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  IVdsServiceLoader ;
typedef  int /*<<< orphan*/  IVdsService ;
typedef  int /*<<< orphan*/  IEnumVdsObject ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int CLSCTX_LOCAL_SERVER ; 
 int CLSCTX_REMOTE_SERVER ; 
 int /*<<< orphan*/  CLSID_VdsLoader ; 
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IVdsServiceLoader ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_C_AUTHN_LEVEL_CONNECT ; 
 int /*<<< orphan*/  RPC_C_IMP_LEVEL_IMPERSONATE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VDS_QUERY_SOFTWARE_PROVIDERS ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

BOOL FUNC17(DWORD DriveIndex)
{
	BOOL r = FALSE;
	HRESULT hr;
	wchar_t wPhysicalName[24];
	IVdsServiceLoader *pLoader;
	IVdsService *pService;
	IEnumVdsObject *pEnum;

	FUNC1(DriveIndex);
	FUNC16(wPhysicalName, FUNC0(wPhysicalName), L"\\\\?\\PhysicalDrive%lu", DriveIndex);

	// Initialize COM
	FUNC5(FUNC3(NULL, COINIT_APARTMENTTHREADED));
	FUNC5(FUNC4(NULL, -1, NULL, NULL, RPC_C_AUTHN_LEVEL_CONNECT,
		RPC_C_IMP_LEVEL_IMPERSONATE, NULL, 0, NULL));

	// Create a VDS Loader Instance
	hr = FUNC2(&CLSID_VdsLoader, NULL, CLSCTX_LOCAL_SERVER | CLSCTX_REMOTE_SERVER,
		&IID_IVdsServiceLoader, (void **)&pLoader);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("Could not create VDS Loader Instance: %s", FUNC14());
		goto out;
	}

	// Load the VDS Service
	hr = FUNC6(pLoader, L"", &pService);
	FUNC7(pLoader);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("Could not load VDS Service: %s", FUNC14());
		goto out;
	}

	// Wait for the Service to become ready if needed
	hr = FUNC12(pService);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("VDS Service is not ready: %s", FUNC14());
		goto out;
	}

	// Query the VDS Service Providers
	hr = FUNC9(pService, VDS_QUERY_SOFTWARE_PROVIDERS, &pEnum);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("Could not query VDS Service Providers: %s", FUNC14());
		goto out;
	}

	// Remove mountpoints
	hr = FUNC8(pService);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("Could not clean up VDS mountpoints: %s", FUNC14());
		goto out;
	}

	// Invoke layout refresh
	hr = FUNC11(pService);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("Could not refresh VDS layout: %s", FUNC14());
		goto out;
	}

	// Force re-enum
	hr = FUNC10(pService);
	if (hr != S_OK) {
		FUNC13(hr);
		FUNC15("Could not refresh VDS layout: %s", FUNC14());
		goto out;
	}
	r = TRUE;

	out:
		return r;
}