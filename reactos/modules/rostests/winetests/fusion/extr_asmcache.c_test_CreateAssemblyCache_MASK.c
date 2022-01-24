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
typedef  int /*<<< orphan*/  IAssemblyCache ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    IAssemblyCache *cache;
    HRESULT hr;

    /* NULL ppAsmCache */
    hr = FUNC2(NULL, 0);
    FUNC1(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    /* dwReserved is non-zero */
    hr = FUNC2(&cache, 42);
    FUNC1(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    FUNC0(cache);
}