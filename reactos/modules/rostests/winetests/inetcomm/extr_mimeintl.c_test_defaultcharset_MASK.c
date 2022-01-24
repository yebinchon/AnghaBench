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
typedef  int /*<<< orphan*/  IMimeInternational ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HCHARSET ;

/* Variables and functions */
 int /*<<< orphan*/  CHARSET_BODY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    IMimeInternational *internat;
    HRESULT hr;
    HCHARSET hcs_default, hcs, hcs_windows_1251;

    hr = FUNC6(&internat);
    FUNC7(hr == S_OK, "ret %08x\n", hr);

    hr = FUNC3(internat, &hcs_default);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    hr = FUNC2(internat, FUNC0(), CHARSET_BODY, &hcs);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(hcs_default == hcs, "Unexpected default charset\n");

    hr = FUNC1(internat, "windows-1251", &hcs_windows_1251);
    FUNC7(hr == S_OK, "got %08x\n", hr);
    hr = FUNC5(internat, hcs_windows_1251);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    hr = FUNC3(internat, &hcs);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(hcs == hcs_windows_1251, "didn't retrieve recently set default\n");
    /* Set the old default back again */
    hr = FUNC5(internat, hcs_default);
    FUNC7(hr == S_OK, "ret %08x\n", hr);

    FUNC4(internat);
}