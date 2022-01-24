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
typedef  enum tid_t { ____Placeholder_tid_t } tid_t ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * tid_ids ; 
 int /*<<< orphan*/ ** typeinfos ; 
 int /*<<< orphan*/  typelib ; 

__attribute__((used)) static HRESULT FUNC7(enum tid_t tid, ITypeInfo **typeinfo)
{
    HRESULT hr;

    if (!typelib)
        hr = FUNC6();
    if (!typelib)
        return hr;

    if (!typeinfos[tid])
    {
        ITypeInfo *ti;

        hr = FUNC3(typelib, tid_ids[tid], &ti);
        if (FUNC1(hr))
        {
            FUNC0("GetTypeInfoOfGuid(%s) failed: %08x\n", FUNC5(tid_ids[tid]), hr);
            return hr;
        }

        if (FUNC4((void**)(typeinfos+tid), ti, NULL))
            FUNC2(ti);
    }

    *typeinfo = typeinfos[tid];
    return S_OK;
}