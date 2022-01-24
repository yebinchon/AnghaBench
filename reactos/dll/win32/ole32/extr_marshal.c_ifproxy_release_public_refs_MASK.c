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
struct ifproxy {TYPE_3__* parent; int /*<<< orphan*/  refs; TYPE_1__ stdobjref; } ;
struct TYPE_7__ {int /*<<< orphan*/  remoting_mutex; int /*<<< orphan*/  oid; int /*<<< orphan*/  oxid; } ;
struct TYPE_6__ {scalar_t__ cPrivateRefs; int /*<<< orphan*/  cPublicRefs; int /*<<< orphan*/  ipid; } ;
typedef  TYPE_2__ REMINTERFACEREF ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  IRemUnknown ;
typedef  struct ifproxy* HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ifproxy*) ; 
 struct ifproxy* E_UNEXPECTED ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ifproxy* FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ifproxy* RPC_E_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ifproxy* S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifproxy* FUNC8 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(struct ifproxy * This)
{
    HRESULT hr = S_OK;
    LONG public_refs;

    if (WAIT_OBJECT_0 != FUNC7(This->parent->remoting_mutex, INFINITE))
    {
        FUNC0("Wait failed for ifproxy %p\n", This);
        return E_UNEXPECTED;
    }

    public_refs = This->refs;
    if (public_refs > 0)
    {
        IRemUnknown *remunk = NULL;

        FUNC5("releasing %d refs\n", public_refs);

        hr = FUNC8(This->parent, &remunk);
        if (hr == S_OK)
        {
            REMINTERFACEREF rif;
            rif.ipid = This->stdobjref.ipid;
            rif.cPublicRefs = public_refs;
            rif.cPrivateRefs = 0;
            hr = FUNC2(remunk, 1, &rif);
            FUNC1(remunk);
            if (hr == S_OK)
                FUNC3((LONG *)&This->refs, -public_refs);
            else if (hr == RPC_E_DISCONNECTED)
                FUNC6("couldn't release references because object was "
                     "disconnected: oxid = %s, oid = %s\n",
                     FUNC9(This->parent->oxid),
                     FUNC9(This->parent->oid));
            else
                FUNC0("IRemUnknown_RemRelease failed with error 0x%08x\n", hr);
        }
    }
    FUNC4(This->parent->remoting_mutex);

    return hr;
}