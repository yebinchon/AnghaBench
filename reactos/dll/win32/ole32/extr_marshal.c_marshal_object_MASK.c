#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stub_manager {int /*<<< orphan*/  object; int /*<<< orphan*/  oid; } ;
struct ifstub {int /*<<< orphan*/  ipid; } ;
struct TYPE_3__ {int cPublicRefs; int /*<<< orphan*/  ipid; int /*<<< orphan*/  oid; int /*<<< orphan*/  flags; int /*<<< orphan*/  oxid; } ;
typedef  TYPE_1__ STDOBJREF ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int MSHLFLAGS ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IRpcStubBuffer ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  APARTMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MSHLFLAGS_NOPING ; 
 int MSHLFLAGS_TABLESTRONG ; 
 int MSHLFLAGS_TABLEWEAK ; 
 int NORMALEXTREFS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORFP_TABLEWEAK ; 
 int /*<<< orphan*/  SORF_NOPING ; 
 int /*<<< orphan*/  SORF_NULL ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct stub_manager* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct stub_manager*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stub_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifstub* FUNC13 (struct stub_manager*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct stub_manager*) ; 
 struct ifstub* FUNC15 (struct stub_manager*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

HRESULT FUNC16(APARTMENT *apt, STDOBJREF *stdobjref, REFIID riid, IUnknown *object,
    DWORD dest_context, void *dest_context_data, MSHLFLAGS mshlflags)
{
    struct stub_manager *manager;
    struct ifstub       *ifstub;
    BOOL                 tablemarshal;
    HRESULT              hr;

    hr = FUNC7(apt, &stdobjref->oxid);
    if (hr != S_OK)
        return hr;

    hr = FUNC6(apt);
    if (hr != S_OK)
        return hr;

    if (!(manager = FUNC10(apt, object, TRUE)))
        return E_OUTOFMEMORY;

    stdobjref->flags = SORF_NULL;
    if (mshlflags & MSHLFLAGS_TABLEWEAK)
        stdobjref->flags |= SORFP_TABLEWEAK;
    if (mshlflags & MSHLFLAGS_NOPING)
        stdobjref->flags |= SORF_NOPING;
    stdobjref->oid = manager->oid;

    tablemarshal = ((mshlflags & MSHLFLAGS_TABLESTRONG) || (mshlflags & MSHLFLAGS_TABLEWEAK));

    /* make sure ifstub that we are creating is unique */
    ifstub = FUNC13(manager, riid, mshlflags);
    if (!ifstub) {
        IRpcStubBuffer *stub = NULL;

        /* IUnknown doesn't require a stub buffer, because it never goes out on
         * the wire */
        if (!FUNC4(riid, &IID_IUnknown))
        {
            IPSFactoryBuffer *psfb;

            hr = FUNC9(riid, &psfb);
            if (hr == S_OK) {
                hr = FUNC1(psfb, riid, manager->object, &stub);
                FUNC2(psfb);
                if (hr != S_OK)
                    FUNC0("Failed to create an IRpcStubBuffer from IPSFactory for %s with error 0x%08x\n",
                        FUNC8(riid), hr);
            }else {
                FUNC0("couldn't get IPSFactory buffer for interface %s\n", FUNC8(riid));
                hr = E_NOINTERFACE;
            }

        }

        if (hr == S_OK) {
            ifstub = FUNC15(manager, stub, riid, dest_context, dest_context_data, mshlflags);
            if (!ifstub)
                hr = E_OUTOFMEMORY;
        }
        if (stub) FUNC3(stub);

        if (hr != S_OK) {
            FUNC14(manager);
            /* destroy the stub manager if it has no ifstubs by releasing
             * zero external references */
            FUNC12(manager, 0, FALSE, TRUE);
            return hr;
        }
    }

    if (!tablemarshal)
    {
        stdobjref->cPublicRefs = NORMALEXTREFS;
        FUNC11(manager, stdobjref->cPublicRefs, FALSE);
    }
    else
    {
        stdobjref->cPublicRefs = 0;
        if (mshlflags & MSHLFLAGS_TABLESTRONG)
            FUNC11(manager, 1, FALSE);
        else
            FUNC11(manager, 0, TRUE);
    }

    /* FIXME: check return value */
    FUNC5(riid);

    stdobjref->ipid = ifstub->ipid;

    FUNC14(manager);
    return S_OK;
}