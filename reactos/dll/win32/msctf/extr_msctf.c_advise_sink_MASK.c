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
struct list {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pIUnknown; } ;
struct TYPE_7__ {int /*<<< orphan*/  entry; TYPE_1__ interfaces; } ;
typedef  TYPE_2__ Sink ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECT_E_CANNOTCONNECT ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct list*,int /*<<< orphan*/ *) ; 

HRESULT FUNC8(struct list *sink_list, REFIID riid, DWORD cookie_magic, IUnknown *unk, DWORD *cookie)
{
    Sink *sink;

    sink = FUNC2(FUNC1(), 0, sizeof(*sink));
    if (!sink)
        return E_OUTOFMEMORY;

    if (FUNC0(FUNC4(unk, riid, (void**)&sink->interfaces.pIUnknown)))
    {
        FUNC3(FUNC1(), 0, sink);
        return CONNECT_E_CANNOTCONNECT;
    }

    FUNC7(sink_list, &sink->entry);
    *cookie = FUNC6(cookie_magic, sink);
    FUNC5("cookie %x\n", *cookie);
    return S_OK;
}