#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winmod ;
struct TYPE_9__ {void* m_pThis; struct TYPE_9__* m_pNext; int /*<<< orphan*/  m_dwThreadID; } ;
typedef  TYPE_2__ _AtlCreateWndData ;
struct TYPE_8__ {int LockCount; } ;
struct TYPE_10__ {int cbSize; TYPE_2__* m_pCreateWndList; TYPE_1__ m_csWindowCreate; } ;
typedef  TYPE_3__ _ATL_MODULEW ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,void*) ; 
 void* FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    _AtlCreateWndData create_data[3];
    _ATL_MODULEW winmod;
    void *p;
    HRESULT hres;

    winmod.cbSize = sizeof(winmod);
    winmod.m_pCreateWndList = (void*)0xdeadbeef;
    winmod.m_csWindowCreate.LockCount = 0xdeadbeef;
    hres = FUNC2(&winmod, NULL, NULL);
    FUNC4(hres == S_OK, "AtlModuleInit failed: %08x\n", hres);
    FUNC4(!winmod.m_pCreateWndList, "winmod.m_pCreateWndList = %p\n", winmod.m_pCreateWndList);
    FUNC4(winmod.m_csWindowCreate.LockCount == -1, "winmod.m_csWindowCreate.LockCount = %d\n",
       winmod.m_csWindowCreate.LockCount);

    FUNC0(&winmod, create_data, (void*)0xdead0001);
    FUNC4(winmod.m_pCreateWndList == create_data, "winmod.m_pCreateWndList != create_data\n");
    FUNC4(create_data[0].m_pThis == (void*)0xdead0001, "unexpected create_data[0].m_pThis %p\n", create_data[0].m_pThis);
    FUNC4(create_data[0].m_dwThreadID == FUNC3(), "unexpected create_data[0].m_dwThreadID %x\n",
       create_data[0].m_dwThreadID);
    FUNC4(!create_data[0].m_pNext, "unexpected create_data[0].m_pNext %p\n", create_data[0].m_pNext);

    FUNC0(&winmod, create_data+1, (void*)0xdead0002);
    FUNC4(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
    FUNC4(create_data[1].m_pThis == (void*)0xdead0002, "unexpected create_data[1].m_pThis %p\n", create_data[1].m_pThis);
    FUNC4(create_data[1].m_dwThreadID == FUNC3(), "unexpected create_data[1].m_dwThreadID %x\n",
       create_data[1].m_dwThreadID);
    FUNC4(create_data[1].m_pNext == create_data, "unexpected create_data[1].m_pNext %p\n", create_data[1].m_pNext);

    FUNC0(&winmod, create_data+2, (void*)0xdead0003);
    FUNC4(winmod.m_pCreateWndList == create_data+2, "winmod.m_pCreateWndList != create_data\n");
    FUNC4(create_data[2].m_pThis == (void*)0xdead0003, "unexpected create_data[2].m_pThis %p\n", create_data[2].m_pThis);
    FUNC4(create_data[2].m_dwThreadID == FUNC3(), "unexpected create_data[2].m_dwThreadID %x\n",
       create_data[2].m_dwThreadID);
    FUNC4(create_data[2].m_pNext == create_data+1, "unexpected create_data[2].m_pNext %p\n", create_data[2].m_pNext);

    p = FUNC1(&winmod);
    FUNC4(p == (void*)0xdead0003, "unexpected AtlModuleExtractCreateWndData result %p\n", p);
    FUNC4(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
    FUNC4(create_data[2].m_pNext == create_data+1, "unexpected create_data[2].m_pNext %p\n", create_data[2].m_pNext);

    create_data[1].m_dwThreadID = 0xdeadbeef;

    p = FUNC1(&winmod);
    FUNC4(p == (void*)0xdead0001, "unexpected AtlModuleExtractCreateWndData result %p\n", p);
    FUNC4(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
    FUNC4(!create_data[0].m_pNext, "unexpected create_data[0].m_pNext %p\n", create_data[0].m_pNext);
    FUNC4(!create_data[1].m_pNext, "unexpected create_data[1].m_pNext %p\n", create_data[1].m_pNext);

    p = FUNC1(&winmod);
    FUNC4(!p, "unexpected AtlModuleExtractCreateWndData result %p\n", p);
    FUNC4(winmod.m_pCreateWndList == create_data+1, "winmod.m_pCreateWndList != create_data\n");
}