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
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_HANDLE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

void FUNC2(HWND hwnd)
{
    HRESULT hr;

    hr = FUNC0(0, NULL, NULL);
    FUNC1 (hr == E_HANDLE, "Expected E_HANDLE got 0x%lx error\n", hr);

    hr = FUNC0((HWND)(ULONG_PTR)0xdeaddeaddeaddeadULL, NULL, NULL);
    FUNC1 (hr == E_HANDLE, "Expected E_HANDLE got 0x%lx error\n", hr);

    hr = FUNC0(hwnd, NULL, NULL);
    FUNC1 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = FUNC0(hwnd, L"none", L"none");
    FUNC1 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = FUNC0(hwnd, NULL, L"none");
    FUNC1 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = FUNC0(hwnd, L"none", NULL);
    FUNC1 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = FUNC0(hwnd, L"", L"");
    FUNC1 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);
}