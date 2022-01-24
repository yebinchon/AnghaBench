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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IStorage ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ STG_E_FILENOTFOUND ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file1_name ; 
 int /*<<< orphan*/  file1_nameA ; 
 int /*<<< orphan*/  file2_name ; 
 int /*<<< orphan*/  file2_nameA ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  stgA_name ; 
 int /*<<< orphan*/  stgB_name ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * strmA_name ; 
 int /*<<< orphan*/ * strmB_name ; 
 int /*<<< orphan*/ * strmC_name ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(void)
{
    IStorage *file1 = NULL, *file2 = NULL, *stg_tmp;
    IStream *strm_tmp;
    WCHAR buf[64];
    HRESULT hr;

    /* create & populate file1 */
    hr = FUNC9(file1_name, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &file1);
    FUNC12(hr == S_OK, "StgCreateDocfile failed: 0x%08x\n", hr);
    if(FUNC1(hr))
        goto cleanup;

    hr = FUNC10(file1);
    if(FUNC1(hr))
        goto cleanup;

    /* create file2 */
    hr = FUNC9(file2_name, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &file2);
    FUNC12(hr == S_OK, "StgCreateDocfile failed: 0x%08x\n", hr);
    if(FUNC1(hr))
        goto cleanup;

    /* copy file1 to file2 with iid exclusions */
    hr = FUNC2(file1, 1, &IID_IStorage, NULL, file2);
    FUNC12(hr == S_OK, "CopyTo failed: 0x%08x\n", hr);
    if(FUNC1(hr))
        goto cleanup;

    /* verify that file1 copied over, respecting exclusions */
    hr = FUNC3(file2, stgA_name, NULL,
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, NULL, 0, &stg_tmp);
    FUNC12(hr == STG_E_FILENOTFOUND, "OpenStorage should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(FUNC8(hr))
        FUNC5(stg_tmp);

    hr = FUNC4(file2, strmA_name, NULL,
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    FUNC12(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(FUNC8(hr))
        FUNC7(strm_tmp);

    hr = FUNC3(file2, stgB_name, NULL,
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, NULL, 0, &stg_tmp);
    FUNC12(hr == STG_E_FILENOTFOUND, "OpenStorage should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(FUNC8(hr))
        FUNC5(stg_tmp);

    hr = FUNC4(file2, strmB_name, NULL,
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    FUNC12(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(FUNC8(hr))
        FUNC7(strm_tmp);

    hr = FUNC4(file2, strmC_name, NULL,
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    FUNC12(hr == S_OK, "OpenStream failed: 0x%08x\n", hr);

    if(FUNC8(hr)){
        FUNC11(buf, 0, sizeof(buf));
        hr = FUNC6(strm_tmp, buf, sizeof(buf), NULL);
        FUNC12(hr == S_OK, "Read failed: 0x%08x\n", hr);
        if(FUNC8(hr))
            FUNC12(FUNC13(buf, strmC_name) == 0,
                    "Expected %s to be read, got %s\n", FUNC14(strmC_name), FUNC14(buf));

        FUNC7(strm_tmp);
    }

cleanup:
    if(file1)
        FUNC5(file1);
    if(file2)
        FUNC5(file2);

    FUNC0(file1_nameA);
    FUNC0(file2_nameA);
}