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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ const ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const*) ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  stgA_name ; 
 int /*<<< orphan*/  stgB_name ; 
 int /*<<< orphan*/  strmA_name ; 
 int /*<<< orphan*/  strmB_name ; 
 int /*<<< orphan*/  strmC_name ; 

__attribute__((used)) static HRESULT FUNC8(IStorage *dest)
{
    IStorage *stgA = NULL, *stgB = NULL;
    IStream *strmA = NULL, *strmB = NULL, *strmC = NULL;
    const ULONG strmA_name_size = FUNC6(strmA_name) * sizeof(WCHAR);
    const ULONG strmB_name_size = FUNC6(strmB_name) * sizeof(WCHAR);
    const ULONG strmC_name_size = FUNC6(strmC_name) * sizeof(WCHAR);
    ULONG bytes;
    HRESULT hr;

    hr = FUNC1(dest, stgA_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stgA);
    FUNC7(hr == S_OK, "IStorage_CreateStorage failed: 0x%08x\n", hr);
    if(FUNC0(hr))
        goto cleanup;

    hr = FUNC2(stgA, strmA_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &strmA);
    FUNC7(hr == S_OK, "IStorage_CreateStream failed: 0x%08x\n", hr);
    if(FUNC0(hr))
        goto cleanup;

    hr = FUNC5(strmA, strmA_name, strmA_name_size, &bytes);
    FUNC7(hr == S_OK && bytes == strmA_name_size, "IStream_Write failed: 0x%08x, %d of %d bytes written\n", hr, bytes, strmA_name_size);

    hr = FUNC1(dest, stgB_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stgB);
    FUNC7(hr == S_OK, "IStorage_CreateStorage failed: 0x%08x\n", hr);
    if(FUNC0(hr))
        goto cleanup;

    hr = FUNC2(stgB, strmB_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &strmB);
    FUNC7(hr == S_OK, "IStorage_CreateStream failed: 0x%08x\n", hr);
    if(FUNC0(hr))
        goto cleanup;

    hr = FUNC5(strmB, strmB_name, strmB_name_size, &bytes);
    FUNC7(hr == S_OK && bytes == strmB_name_size, "IStream_Write failed: 0x%08x, %d of %d bytes written\n", hr, bytes, strmB_name_size);

    hr = FUNC2(dest, strmC_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &strmC);
    FUNC7(hr == S_OK, "IStorage_CreateStream failed: 0x%08x\n", hr);
    if(FUNC0(hr))
        goto cleanup;

    hr = FUNC5(strmC, strmC_name, strmC_name_size, &bytes);
    FUNC7(hr == S_OK && bytes == strmC_name_size, "IStream_Write failed: 0x%08x, %d of %d bytes written\n", hr, bytes, strmC_name_size);

cleanup:
    if(strmC)
        FUNC4(strmC);
    if(strmB)
        FUNC4(strmB);
    if(stgB)
        FUNC3(stgB);
    if(strmA)
        FUNC4(strmA);
    if(stgA)
        FUNC3(stgA);

    return hr;
}