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
typedef  size_t tid_t ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * tid_ids ; 
 int /*<<< orphan*/ ** typeinfos ; 
 int /*<<< orphan*/  typelib ; 

HRESULT FUNC8(tid_t tid, ITypeInfo **typeinfo)
{
    HRESULT hres;

    if (FUNC1(hres = FUNC7()))
        return hres;

    if(!typeinfos[tid]) {
        ITypeInfo *ti;

        hres = FUNC4(typelib, tid_ids[tid], &ti);
        if(FUNC1(hres)) {
            FUNC0("GetTypeInfoOfGuid(%s) failed: %08x\n", FUNC6(tid_ids[tid]), hres);
            return hres;
        }

        if(FUNC5((void**)(typeinfos+tid), ti, NULL))
            FUNC3(ti);
    }

    *typeinfo = typeinfos[tid];
    FUNC2(*typeinfo);
    return S_OK;
}