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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_unk ; 

__attribute__((used)) static void FUNC7(void)
{
    static const WCHAR stdole2W[] = {'s','t','d','o','l','e','2','.','t','l','b',0};
    ITypeLib *tl;
    ITypeInfo *ti;
    IUnknown *unk;
    HRESULT hr;

    hr = FUNC0(NULL, NULL, NULL, NULL);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC0(NULL, NULL, NULL, &unk);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC5(stdole2W, &tl);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    hr = FUNC2(tl, &IID_IUnknown, &ti);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC3(tl);

    hr = FUNC0(NULL, &test_unk, NULL, &unk);
    FUNC6(hr == E_INVALIDARG, "got %08x\n", hr);

    hr = FUNC0(NULL, NULL, ti, &unk);
    FUNC6(hr == E_INVALIDARG, "got %08x\n", hr);

    hr = FUNC0(NULL, &test_unk, ti, &unk);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC4(unk);

    FUNC1(ti);
}