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
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MKRREDUCE_ALL ; 

__attribute__((used)) static HRESULT FUNC5(IMoniker *pmk, IBindCtx *pbc, IMoniker **pmkReduced)
{
    IBindCtx *pbcNew = NULL;
    HRESULT hr;
    if (!pbc)
    {
        hr = FUNC0(0, &pbcNew);
        if (FUNC2(hr))
            return hr;
        pbc = pbcNew;
    }
    hr = FUNC4(pmk, pbc, MKRREDUCE_ALL, NULL, pmkReduced);
    if (FUNC2(hr))
        FUNC1("reducing moniker failed with error 0x%08x\n", hr);
    if (pbcNew) FUNC3(pbcNew);
    return hr;
}