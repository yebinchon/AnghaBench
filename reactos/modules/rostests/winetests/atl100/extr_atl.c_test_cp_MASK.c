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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CLSID_Test ; 
 int /*<<< orphan*/  ConnectionPointContainer ; 
 int E_INVALIDARG ; 
 int S_OK ; 
 int advise_cnt ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    DWORD cookie = 0;
    HRESULT hres;

    hres = FUNC0(NULL, (IUnknown*)0xdeed0000, &CLSID_Test, &cookie);
    FUNC2(hres == E_INVALIDARG, "expect E_INVALIDARG, returned %08x\n", hres);

    hres = FUNC1(NULL, &CLSID_Test, 0xdeadbeef);
    FUNC2(hres == E_INVALIDARG, "expect E_INVALIDARG, returned %08x\n", hres);

    hres = FUNC0((IUnknown*)&ConnectionPointContainer, (IUnknown*)0xdead0000, &CLSID_Test, &cookie);
    FUNC2(hres == S_OK, "AtlAdvise failed: %08x\n", hres);
    FUNC2(cookie == 0xdeadbeef, "cookie = %x\n", cookie);
    FUNC2(advise_cnt == 1, "advise_cnt = %d\n", advise_cnt);

    hres = FUNC1((IUnknown*)&ConnectionPointContainer, &CLSID_Test, 0xdeadbeef);
    FUNC2(hres == S_OK, "AtlUnadvise failed: %08x\n", hres);
    FUNC2(!advise_cnt, "advise_cnt = %d\n", advise_cnt);
}