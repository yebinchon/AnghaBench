#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_8__ {int /*<<< orphan*/  memid; } ;
struct TYPE_7__ {unsigned int cFuncs; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ FUNCDESC ;
typedef  unsigned int DWORD ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  id_cmp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 

HRESULT FUNC10(tid_t tid, DWORD *ret_size, DISPID **ret)
{
    unsigned i, func_cnt;
    FUNCDESC *funcdesc;
    ITypeInfo *ti;
    TYPEATTR *attr;
    DISPID *ids;
    HRESULT hres;

    hres = FUNC6(tid, &ti);
    if(FUNC0(hres))
        return hres;

    hres = FUNC2(ti, &attr);
    if(FUNC0(hres)) {
        FUNC3(ti);
        return hres;
    }

    func_cnt = attr->cFuncs;
    FUNC5(ti, attr);

    ids = FUNC7(func_cnt*sizeof(DISPID));
    if(!ids) {
        FUNC3(ti);
        return E_OUTOFMEMORY;
    }

    for(i=0; i < func_cnt; i++) {
        hres = FUNC1(ti, i, &funcdesc);
        if(FUNC0(hres))
            break;

        ids[i] = funcdesc->memid;
        FUNC4(ti, funcdesc);
    }

    FUNC3(ti);
    if(FUNC0(hres)) {
        FUNC8(ids);
        return hres;
    }

    FUNC9(ids, func_cnt, sizeof(DISPID), id_cmp);

    *ret_size = func_cnt;
    *ret = ids;
    return S_OK;
}