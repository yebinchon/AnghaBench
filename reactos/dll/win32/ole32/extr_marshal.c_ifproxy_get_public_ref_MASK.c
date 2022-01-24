#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ipid; } ;
struct ifproxy {scalar_t__ refs; TYPE_3__* parent; TYPE_1__ stdobjref; } ;
struct TYPE_7__ {int /*<<< orphan*/  remoting_mutex; } ;
struct TYPE_6__ {scalar_t__ cPrivateRefs; int /*<<< orphan*/  cPublicRefs; int /*<<< orphan*/  ipid; } ;
typedef  TYPE_2__ REMINTERFACEREF ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  IRemUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NORMALEXTREFS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,struct ifproxy*) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC8(struct ifproxy * This)
{
    HRESULT hr = S_OK;

    if (WAIT_OBJECT_0 != FUNC6(This->parent->remoting_mutex, INFINITE))
    {
        FUNC0("Wait failed for ifproxy %p\n", This);
        return E_UNEXPECTED;
    }

    if (This->refs == 0)
    {
        IRemUnknown *remunk = NULL;

        FUNC5("getting public ref for ifproxy %p\n", This);

        hr = FUNC7(This->parent, &remunk);
        if (hr == S_OK)
        {
            HRESULT hrref = S_OK;
            REMINTERFACEREF rif;
            rif.ipid = This->stdobjref.ipid;
            rif.cPublicRefs = NORMALEXTREFS;
            rif.cPrivateRefs = 0;
            hr = FUNC2(remunk, 1, &rif, &hrref);
            FUNC1(remunk);
            if (hr == S_OK && hrref == S_OK)
                FUNC3((LONG *)&This->refs, NORMALEXTREFS);
            else
                FUNC0("IRemUnknown_RemAddRef returned with 0x%08x, hrref = 0x%08x\n", hr, hrref);
        }
    }
    FUNC4(This->parent->remoting_mutex);

    return hr;
}