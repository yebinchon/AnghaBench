#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_6__ {int /*<<< orphan*/  ullOffset; int /*<<< orphan*/  ullSize; int /*<<< orphan*/  ulPartitionNumber; } ;
typedef  TYPE_1__ VDS_PARTITION_PROP ;
struct TYPE_7__ {int /*<<< orphan*/  pwszName; } ;
typedef  TYPE_2__ VDS_DISK_PROP ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  size_t LONG ;
typedef  int /*<<< orphan*/  IVdsSwProvider ;
typedef  int /*<<< orphan*/  IVdsServiceLoader ;
typedef  int /*<<< orphan*/  IVdsService ;
typedef  int /*<<< orphan*/  IVdsProvider ;
typedef  int /*<<< orphan*/  IVdsPack ;
typedef  int /*<<< orphan*/  IVdsDisk ;
typedef  int /*<<< orphan*/  IVdsAsync ;
typedef  int /*<<< orphan*/  IVdsAdvancedDisk ;
typedef  int /*<<< orphan*/  IUnknown ;
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
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FormatStatus ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IVdsAdvancedDisk ; 
 int /*<<< orphan*/  IID_IVdsDisk ; 
 int /*<<< orphan*/  IID_IVdsPack ; 
 int /*<<< orphan*/  IID_IVdsProvider ; 
 int /*<<< orphan*/  IID_IVdsServiceLoader ; 
 int /*<<< orphan*/  IID_IVdsSwProvider ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_1__**,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_C_AUTHN_LEVEL_CONNECT ; 
 int /*<<< orphan*/  RPC_C_IMP_LEVEL_IMPERSONATE ; 
 scalar_t__ FUNC29 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VDS_E_OPERATION_PENDING ; 
 int /*<<< orphan*/  VDS_QUERY_SOFTWARE_PROVIDERS ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

BOOL FUNC37(DWORD DriveIndex)
{
	BOOL r = FALSE;
	HRESULT hr;
	ULONG ulFetched;
	wchar_t wPhysicalName[24];
	IVdsServiceLoader *pLoader;
	IVdsService *pService;
	IEnumVdsObject *pEnum;
	IUnknown *pUnk;

	FUNC1(DriveIndex);
	FUNC36(wPhysicalName, FUNC0(wPhysicalName), L"\\\\?\\PhysicalDrive%lu", DriveIndex);

	// Initialize COM
	FUNC7(FUNC3(NULL, COINIT_APARTMENTTHREADED));
	FUNC7(FUNC4(NULL, -1, NULL, NULL, RPC_C_AUTHN_LEVEL_CONNECT,
		RPC_C_IMP_LEVEL_IMPERSONATE, NULL, 0, NULL));

	// Create a VDS Loader Instance
	hr = FUNC2(&CLSID_VdsLoader, NULL, CLSCTX_LOCAL_SERVER | CLSCTX_REMOTE_SERVER,
		&IID_IVdsServiceLoader, (void **)&pLoader);
	if (hr != S_OK) {
		FUNC32(hr);
		FUNC35("Could not create VDS Loader Instance: %s", FUNC33());
		goto out;
	}

	// Load the VDS Service
	hr = FUNC22(pLoader, L"", &pService);
	FUNC23(pLoader);
	if (hr != S_OK) {
		FUNC32(hr);
		FUNC35("Could not load VDS Service: %s", FUNC33());
		goto out;
	}

	// Wait for the Service to become ready if needed
	hr = FUNC25(pService);
	if (hr != S_OK) {
		FUNC32(hr);
		FUNC35("VDS Service is not ready: %s", FUNC33());
		goto out;
	}

	// Query the VDS Service Providers
	hr = FUNC24(pService, VDS_QUERY_SOFTWARE_PROVIDERS, &pEnum);
	if (hr != S_OK) {
		FUNC32(hr);
		FUNC35("Could not query VDS Service Providers: %s", FUNC33());
		goto out;
	}

	while (FUNC6(pEnum, 1, &pUnk, &ulFetched) == S_OK) {
		IVdsProvider *pProvider;
		IVdsSwProvider *pSwProvider;
		IEnumVdsObject *pEnumPack;
		IUnknown *pPackUnk;

		// Get VDS Provider
		hr = FUNC9(pUnk, &IID_IVdsProvider, (void **)&pProvider);
		FUNC10(pUnk);
		if (hr != S_OK) {
			FUNC32(hr);
			FUNC35("Could not get VDS Provider: %s", FUNC33());
			goto out;
		}

		// Get VDS Software Provider
		hr = FUNC26(pProvider, &IID_IVdsSwProvider, (void **)&pSwProvider);
		FUNC21(pProvider);
		if (hr != S_OK) {
			FUNC32(hr);
			FUNC35("Could not get VDS Software Provider: %s", FUNC33());
			goto out;
		}

		// Get VDS Software Provider Packs
		hr = FUNC27(pSwProvider, &pEnumPack);
		FUNC28(pSwProvider);
		if (hr != S_OK) {
			FUNC32(hr);
			FUNC35("Could not get VDS Software Provider Packs: %s", FUNC33());
			goto out;
		}

		// Enumerate Provider Packs
		while (FUNC6(pEnumPack, 1, &pPackUnk, &ulFetched) == S_OK) {
			IVdsPack *pPack;
			IEnumVdsObject *pEnumDisk;
			IUnknown *pDiskUnk;

			hr = FUNC9(pPackUnk, &IID_IVdsPack, (void **)&pPack);
			FUNC10(pPackUnk);
			if (hr != S_OK) {
				FUNC32(hr);
				FUNC35("Could not query VDS Software Provider Pack: %s", FUNC33());
				goto out;
			}

			// Use the pack interface to access the disks
			hr = FUNC20(pPack, &pEnumDisk);
			if (hr != S_OK) {
				FUNC32(hr);
				FUNC35("Could not query VDS disks: %s", FUNC33());
				goto out;
			}

			// List disks
			while (FUNC6(pEnumDisk, 1, &pDiskUnk, &ulFetched) == S_OK) {
				VDS_DISK_PROP diskprop;
				VDS_PARTITION_PROP* prop_array;
				LONG i, prop_array_size;
				IVdsDisk *pDisk;
				IVdsAdvancedDisk *pAdvancedDisk;

				// Get the disk interface.
				hr = FUNC9(pDiskUnk, &IID_IVdsDisk, (void **)&pDisk);
				if (hr != S_OK) {
					FUNC32(hr);
					FUNC35("Could not query VDS Disk Interface: %s", FUNC33());
					goto out;
				}

				// Get the disk properties
				hr = FUNC17(pDisk, &diskprop);
				if (hr != S_OK) {
					FUNC32(hr);
					FUNC35("Could not query VDS Disk Properties: %s", FUNC33());
					goto out;
				}

				// Isolate the disk we want
				if (FUNC34(wPhysicalName, diskprop.pwszName) != 0) {
					FUNC19(pDisk);
					continue;
				}

				// Instantiate the AdvanceDisk interface for our disk.
				hr = FUNC18(pDisk, &IID_IVdsAdvancedDisk, (void **)&pAdvancedDisk);
				FUNC19(pDisk);
				if (hr != S_OK) {
					FUNC32(hr);
					FUNC35("Could not access VDS Advanced Disk interface: %s", FUNC33());
					goto out;
				}

				// Query the partition data, so we can get the start offset, which we need for deletion
				hr = FUNC13(pAdvancedDisk, &prop_array, &prop_array_size);
				if (hr == S_OK) {
					FUNC35("Deleting ALL partition(s) from disk '%S':", diskprop.pwszName);
					// Now go through each partition
					for (i = 0; i < prop_array_size; i++) {
						FUNC35("● Partition %d (offset: %lld, size: %s)", prop_array[i].ulPartitionNumber,
							prop_array[i].ullOffset, FUNC30(prop_array[i].ullSize, FALSE, FALSE));
						hr = FUNC12(pAdvancedDisk, prop_array[i].ullOffset, TRUE, TRUE);
						if (hr != S_OK) {
							r = FALSE;
							FUNC32(hr);
							FUNC35("Could not delete partitions: %s", FUNC33());
						}
					}
					r = TRUE;
				} else {
					FUNC35("No partition to delete on disk '%S'", diskprop.pwszName);
					r = TRUE;
				}
				FUNC5(prop_array);

#if 0
				// Issue a Clean while we're at it
				HRESULT hr2 = E_FAIL;
				ULONG completed;
				IVdsAsync* pAsync;
				hr = IVdsAdvancedDisk_Clean(pAdvancedDisk, TRUE, FALSE, FALSE, &pAsync);
				while (SUCCEEDED(hr)) {
					if (IS_ERROR(FormatStatus)) {
						IVdsAsync_Cancel(pAsync);
						break;
					}
					hr = IVdsAsync_QueryStatus(pAsync, &hr2, &completed);
					if (SUCCEEDED(hr)) {
						hr = hr2;
						if (hr == S_OK)
							break;
						if (hr == VDS_E_OPERATION_PENDING)
							hr = S_OK;
					}
					Sleep(500);
				}
				if (hr != S_OK) {
					VDS_SET_ERROR(hr);
					uprintf("Could not clean disk: %s", WindowsErrorString());
				}
#endif
				FUNC14(pAdvancedDisk);
				goto out;
			}
		}
	}

out:
	return r;
}