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
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int LibXml ; 
 int /*<<< orphan*/  S_OK ; 
 unsigned int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** typeinfos ; 

HRESULT FUNC9(enum tid_t tid, ITypeInfo **typeinfo)
{
    unsigned lib = FUNC6(tid);
    ITypeLib *typelib;
    HRESULT hres;

    if (FUNC1(hres = FUNC8(lib, &typelib)))
        return hres;

    if(!typeinfos[tid]) {
        ITypeInfo *ti;

        hres = FUNC4(typelib, FUNC7(tid), &ti);
        if(FUNC1(hres)) {
            /* try harder with typelib from msxml.dll */
            if (FUNC1(hres = FUNC8(LibXml, &typelib)))
                return hres;
            hres = FUNC4(typelib, FUNC7(tid), &ti);
            if(FUNC1(hres)) {
                FUNC0("GetTypeInfoOfGuid failed: %08x\n", hres);
                return hres;
            }
        }

        if(FUNC5((void**)(typeinfos+tid), ti, NULL))
            FUNC3(ti);
    }

    *typeinfo = typeinfos[tid];

    FUNC2(typeinfos[tid]);
    return S_OK;
}