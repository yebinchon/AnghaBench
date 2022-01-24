#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  clsid ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_12__ {int* Data4; } ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ GUID ;
typedef  TYPE_1__ CLSID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ CLSID_NULL ; 
 TYPE_1__ CLSID_StdFont ; 
 TYPE_1__ CLSID_non_existent ; 
 scalar_t__ CO_E_CLASSSTRING ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  actctx_manifest ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * progidW ; 
 int /*<<< orphan*/ * stdfont ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * wszNonExistent ; 

__attribute__((used)) static void FUNC10(void)
{
    ULONG_PTR cookie = 0;
    HANDLE handle;
    CLSID clsid;
    HRESULT hr = FUNC0(stdfont, &clsid);
    FUNC5(hr == S_OK, "CLSIDFromProgID failed with error 0x%08x\n", hr);
    FUNC5(FUNC2(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    hr = FUNC1(stdfont, &clsid);
    FUNC6(hr, "CLSIDFromString");
    FUNC5(FUNC2(&clsid, &CLSID_StdFont), "clsid wasn't equal to CLSID_StdFont\n");

    /* test some failure cases */

    hr = FUNC0(wszNonExistent, NULL);
    FUNC5(hr == E_INVALIDARG, "CLSIDFromProgID should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = FUNC0(NULL, &clsid);
    FUNC5(hr == E_INVALIDARG, "CLSIDFromProgID should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    FUNC4(&clsid, 0xcc, sizeof(clsid));
    hr = FUNC0(wszNonExistent, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "CLSIDFromProgID on nonexistent ProgID should have returned CO_E_CLASSSTRING instead of 0x%08x\n", hr);
    FUNC5(FUNC2(&clsid, &CLSID_NULL), "CLSIDFromProgID should have set clsid to all-zeros on failure\n");

    /* fails without proper context */
    FUNC4(&clsid, 0xcc, sizeof(clsid));
    hr = FUNC0(progidW, &clsid);
    FUNC5(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);
    FUNC5(FUNC2(&clsid, &CLSID_NULL), "wrong clsid\n");

    if ((handle = FUNC3(actctx_manifest, &cookie)))
    {
        GUID clsid1;

        FUNC4(&clsid, 0xcc, sizeof(clsid));
        hr = FUNC0(wszNonExistent, &clsid);
        FUNC5(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);
        FUNC5(FUNC2(&clsid, &CLSID_NULL), "should have zero CLSID on failure\n");

        /* CLSIDFromString() doesn't check activation context */
        hr = FUNC1(progidW, &clsid);
        FUNC5(hr == CO_E_CLASSSTRING, "got 0x%08x\n", hr);

        clsid = CLSID_NULL;
        hr = FUNC0(progidW, &clsid);
        FUNC5(hr == S_OK, "got 0x%08x\n", hr);
        /* it returns generated CLSID here */
        FUNC5(!FUNC2(&clsid, &CLSID_non_existent) && !FUNC2(&clsid, &CLSID_NULL),
                 "got wrong clsid %s\n", FUNC9(&clsid));

        /* duplicate progid present in context - returns generated guid here too */
        clsid = CLSID_NULL;
        hr = FUNC0(stdfont, &clsid);
        FUNC5(hr == S_OK, "got 0x%08x\n", hr);
        clsid1 = CLSID_StdFont;
        /* that's where it differs from StdFont */
        clsid1.Data4[7] = 0x52;
        FUNC5(!FUNC2(&clsid, &CLSID_StdFont) && !FUNC2(&clsid, &CLSID_NULL) && !FUNC2(&clsid, &clsid1),
            "got %s\n", FUNC9(&clsid));

        FUNC7(0, cookie);
        FUNC8(handle);
    }
}