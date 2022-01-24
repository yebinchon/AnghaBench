#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winmod ;
struct TYPE_10__ {void* m_pThis; struct TYPE_10__* m_pNext; int /*<<< orphan*/  m_dwThreadID; } ;
typedef  TYPE_2__ _AtlCreateWndData ;
struct TYPE_12__ {int LockCount; } ;
struct TYPE_9__ {void* m_aT; int m_nSize; int m_nAllocSize; } ;
struct TYPE_11__ {int cbSize; TYPE_2__* m_pCreateWndList; TYPE_4__ m_csWindowCreate; TYPE_1__ m_rgWindowClassAtoms; } ;
typedef  TYPE_3__ _ATL_WIN_MODULE ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,void*) ; 
 void* FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    _AtlCreateWndData create_data[3];
    _ATL_WIN_MODULE winmod;
    void *p;
    HRESULT hres;

    winmod.cbSize = 0xdeadbeef;
    hres = FUNC2(&winmod);
    FUNC5(hres == E_INVALIDARG, "AtlWinModuleInit failed: %08x\n", hres);

    winmod.cbSize = sizeof(winmod);
    winmod.m_pCreateWndList = (void*)0xdeadbeef;
    winmod.m_csWindowCreate.LockCount = 0xdeadbeef;
    winmod.m_rgWindowClassAtoms.m_aT = (void*)0xdeadbeef;
    winmod.m_rgWindowClassAtoms.m_nSize = 0xdeadbeef;
    winmod.m_rgWindowClassAtoms.m_nAllocSize = 0xdeadbeef;
    hres = FUNC2(&winmod);
    FUNC5(hres == S_OK, "AtlWinModuleInit failed: %08x\n", hres);
    FUNC5(!winmod.m_pCreateWndList, "winmod.m_pCreateWndList = %p\n", winmod.m_pCreateWndList);
    FUNC5(winmod.m_csWindowCreate.LockCount == -1, "winmod.m_csWindowCreate.LockCount = %d\n",
       winmod.m_csWindowCreate.LockCount);
    FUNC5(winmod.m_rgWindowClassAtoms.m_aT == (void*)0xdeadbeef, "winmod.m_rgWindowClassAtoms.m_aT = %p\n",
       winmod.m_rgWindowClassAtoms.m_aT);
    FUNC5(winmod.m_rgWindowClassAtoms.m_nSize == 0xdeadbeef, "winmod.m_rgWindowClassAtoms.m_nSize = %d\n",
       winmod.m_rgWindowClassAtoms.m_nSize);
    FUNC5(winmod.m_rgWindowClassAtoms.m_nAllocSize == 0xdeadbeef, "winmod.m_rgWindowClassAtoms.m_nAllocSize = %d\n",
       winmod.m_rgWindowClassAtoms.m_nAllocSize);

    FUNC4(&winmod.m_csWindowCreate);

    FUNC0(&winmod, create_data, (void*)0xdead0001);
    FUNC5(winmod.m_pCreateWndList == create_data, "winmod.m_pCreateWndList != create_data\n");
    FUNC5(create_data[0].m_pThis == (void*)0xdead0001, "unexpected create_data[0].m_pThis %p\n", create_data[0].m_pThis);
    FUNC5(create_data[0].m_dwThreadID == FUNC3(), "unexpected create_data[0].m_dwThreadID %x\n",
       create_data[0].m_dwThreadID);
    FUNC5(!create_data[0].m_pNext, "unexpected create_data[0].m_pNext %p\n", create_data[0].m_pNext);

    FUNC0(&winmod, create_data+1, (void*)0xdead0002);
    FUNC5(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
    FUNC5(create_data[1].m_pThis == (void*)0xdead0002, "unexpected create_data[1].m_pThis %p\n", create_data[1].m_pThis);
    FUNC5(create_data[1].m_dwThreadID == FUNC3(), "unexpected create_data[1].m_dwThreadID %x\n",
       create_data[1].m_dwThreadID);
    FUNC5(create_data[1].m_pNext == create_data, "unexpected create_data[1].m_pNext %p\n", create_data[1].m_pNext);

    FUNC0(&winmod, create_data+2, (void*)0xdead0003);
    FUNC5(winmod.m_pCreateWndList == create_data+2, "winmod.m_pCreateWndList != create_data\n");
    FUNC5(create_data[2].m_pThis == (void*)0xdead0003, "unexpected create_data[2].m_pThis %p\n", create_data[2].m_pThis);
    FUNC5(create_data[2].m_dwThreadID == FUNC3(), "unexpected create_data[2].m_dwThreadID %x\n",
       create_data[2].m_dwThreadID);
    FUNC5(create_data[2].m_pNext == create_data+1, "unexpected create_data[2].m_pNext %p\n", create_data[2].m_pNext);

    p = FUNC1(&winmod);
    FUNC5(p == (void*)0xdead0003, "unexpected AtlWinModuleExtractCreateWndData result %p\n", p);
    FUNC5(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
    FUNC5(create_data[2].m_pNext == create_data+1, "unexpected create_data[2].m_pNext %p\n", create_data[2].m_pNext);

    create_data[1].m_dwThreadID = 0xdeadbeef;

    p = FUNC1(&winmod);
    FUNC5(p == (void*)0xdead0001, "unexpected AtlWinModuleExtractCreateWndData result %p\n", p);
    FUNC5(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
    FUNC5(!create_data[0].m_pNext, "unexpected create_data[0].m_pNext %p\n", create_data[0].m_pNext);
    FUNC5(!create_data[1].m_pNext, "unexpected create_data[1].m_pNext %p\n", create_data[1].m_pNext);

    p = FUNC1(&winmod);
    FUNC5(!p, "unexpected AtlWinModuleExtractCreateWndData result %p\n", p);
    FUNC5(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
}