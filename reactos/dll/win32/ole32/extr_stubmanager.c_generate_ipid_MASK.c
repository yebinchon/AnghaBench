#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stub_manager {TYPE_1__* apt; } ;
typedef  void* USHORT ;
struct TYPE_7__ {void* Data3; void* Data2; int /*<<< orphan*/  Data1; } ;
struct TYPE_6__ {scalar_t__ tid; int /*<<< orphan*/  ipidc; } ;
typedef  TYPE_2__ IPID ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct stub_manager*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static inline HRESULT FUNC6(struct stub_manager *m, IPID *ipid)
{
    HRESULT hr;
    hr = FUNC4(ipid);
    if (FUNC1(hr))
    {
        FUNC0("couldn't create IPID for stub manager %p\n", m);
        FUNC5(ipid);
        return hr;
    }

    ipid->Data1 = FUNC3(&m->apt->ipidc);
    ipid->Data2 = (USHORT)m->apt->tid;
    ipid->Data3 = (USHORT)FUNC2();
    return S_OK;
}