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
typedef  int /*<<< orphan*/  IAssemblyCacheItem ;
typedef  int /*<<< orphan*/  IAssemblyCache ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    IAssemblyCache *cache;
    IAssemblyCacheItem *item;
    HRESULT hr;

    static const WCHAR wine[] = {'w','i','n','e',0};

    hr = FUNC4(&cache, 0);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = FUNC1(cache, 0, NULL, NULL, NULL);
    FUNC3(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = FUNC1(cache, 0, NULL, &item, NULL);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC0(item);

    hr = FUNC1(cache, 0, NULL, &item, wine);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC0(item);

    hr = FUNC1(cache, 1, (void *)0xdeadbeef, &item, NULL);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC0(item);

    hr = FUNC1(cache, 1, NULL, &item, NULL);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC0(item);

    hr = FUNC1(cache, 0, (void *)0xdeadbeef, &item, NULL);
    FUNC3(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC0(item);

    FUNC2(cache);
}