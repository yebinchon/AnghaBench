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
typedef  int /*<<< orphan*/  clsid2 ;
typedef  int /*<<< orphan*/  clsid ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ STG_E_READFAULT ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  test_stg_cls ; 

__attribute__((used)) static void FUNC9(void)
{
    CLSID clsid, clsid2;
    HRESULT hr;
    IStream *pStream;
    static const LARGE_INTEGER llZero;

    hr = FUNC4(NULL, &clsid);
    FUNC7(hr == E_INVALIDARG, "ReadClassStm should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = FUNC0(NULL, TRUE, &pStream);
    FUNC8(hr, "CreateStreamOnHGlobal");
    hr = FUNC5(pStream, &test_stg_cls);
    FUNC8(hr, "WriteClassStm");

    hr = FUNC4(pStream, NULL);
    FUNC7(hr == E_INVALIDARG, "ReadClassStm should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    FUNC6(&clsid, 0xcc, sizeof(clsid));
    FUNC6(&clsid2, 0xcc, sizeof(clsid2));
    hr = FUNC4(NULL, &clsid);
    FUNC7(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC7(FUNC3(&clsid, &clsid2), "got wrong clsid\n");

    /* test not rewound stream */
    hr = FUNC4(pStream, &clsid);
    FUNC7(hr == STG_E_READFAULT, "ReadClassStm should have returned STG_E_READFAULT instead of 0x%08x\n", hr);
    FUNC7(FUNC3(&clsid, &CLSID_NULL), "clsid should have been zeroed\n");

    hr = FUNC2(pStream, llZero, STREAM_SEEK_SET, NULL);
    FUNC8(hr, "IStream_Seek");
    hr = FUNC4(pStream, &clsid);
    FUNC8(hr, "ReadClassStm");
    FUNC7(FUNC3(&clsid, &test_stg_cls), "clsid should have been set to CLSID_WineTest\n");

    FUNC1(pStream);
}