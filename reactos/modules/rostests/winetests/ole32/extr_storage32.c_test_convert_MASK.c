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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ STG_E_FILENOTFOUND ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR filename[] = {'s','t','o','r','a','g','e','.','s','t','g',0};
    IStorage *stg;
    HRESULT hr;

    hr = FUNC1(NULL);
    FUNC5(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC4( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &stg);
    FUNC5(hr == S_OK, "StgCreateDocfile failed\n");
    hr = FUNC1(stg);
    FUNC5(hr == STG_E_FILENOTFOUND, "got 0x%08x\n", hr);
    hr = FUNC3(stg, TRUE);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC3(stg, TRUE);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC1(stg);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC3(stg, FALSE);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC1(stg);
    FUNC5(hr == S_FALSE, "got 0x%08x\n", hr);

    FUNC2(stg);

    FUNC0(filename);
}