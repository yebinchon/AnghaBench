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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STGC_DEFAULT ; 
 int STGM_CREATE ; 
 int STGM_DIRECT ; 
 int STGM_DIRECT_SWMR ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_DENY_NONE ; 
 int STGM_SHARE_DENY_READ ; 
 int STGM_SHARE_DENY_WRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_INVALIDFLAG ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  create ; 
 int /*<<< orphan*/  create_close ; 
 int /*<<< orphan*/  create_commit ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR fileW[] = {'w','i','n','e','t','e','s','t',0};
    static const char fileA[] = "winetest";
    IStorage *stg;
    HRESULT hr;

    /* STGM_TRANSACTED */
    hr = FUNC3(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, &stg);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create);

    hr = FUNC1(stg, STGC_DEFAULT);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create_commit);

    FUNC2(stg);

    FUNC7(fileA, create_close);

    FUNC0(fileA);

    /* STGM_DIRECT */
    hr = FUNC3(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_EXCLUSIVE | STGM_DIRECT, 0, &stg);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create);

    hr = FUNC1(stg, STGC_DEFAULT);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create_commit);

    FUNC2(stg);

    FUNC7(fileA, create_close);

    FUNC0(fileA);

    /* STGM_SHARE_DENY_NONE */
    hr = FUNC3(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_DENY_NONE | STGM_TRANSACTED, 0, &stg);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create);

    hr = FUNC1(stg, STGC_DEFAULT);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create_commit);

    FUNC2(stg);

    FUNC7(fileA, create_close);

    FUNC0(fileA);

    /* STGM_SHARE_DENY_READ */
    hr = FUNC3(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_DENY_READ | STGM_TRANSACTED, 0, &stg);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create);

    hr = FUNC1(stg, STGC_DEFAULT);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create_commit);

    FUNC2(stg);

    FUNC7(fileA, create_close);

    FUNC0(fileA);

    /* STGM_SHARE_DENY_WRITE */
    hr = FUNC3(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_DENY_WRITE | STGM_TRANSACTED, 0, &stg);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create);

    hr = FUNC1(stg, STGC_DEFAULT);
    FUNC6(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC7(fileA, create_commit);

    FUNC2(stg);

    FUNC7(fileA, create_close);

    FUNC0(fileA);

    /* STGM_DIRECT_SWMR | STGM_READ | STGM_SHARE_DENY_NONE - reader mode for direct SWMR mode */
    hr = FUNC3(fileW, STGM_CREATE | STGM_READWRITE | STGM_SHARE_DENY_WRITE | STGM_TRANSACTED, 0, &stg);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC2(stg);

    hr = FUNC4(fileW, NULL, STGM_DIRECT_SWMR | STGM_READ | STGM_SHARE_DENY_NONE, NULL, 0, &stg);
    FUNC6(hr == S_OK || FUNC5(hr == STG_E_INVALIDFLAG), "got %08x\n", hr);
    if(hr != S_OK)
       return;

    FUNC7(fileA, create);

    FUNC2(stg);
    FUNC7(fileA, create_close);

    FUNC0(fileA);
}