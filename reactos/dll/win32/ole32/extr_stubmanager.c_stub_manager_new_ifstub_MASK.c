#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ipidRemUnknown; } ;
struct stub_manager {int /*<<< orphan*/  lock; int /*<<< orphan*/  norm_refs; int /*<<< orphan*/  ifstubs; TYPE_1__ oxid_info; int /*<<< orphan*/  object; int /*<<< orphan*/  oid; } ;
struct ifstub {int flags; int /*<<< orphan*/  ipid; int /*<<< orphan*/  entry; int /*<<< orphan*/  iid; int /*<<< orphan*/ * stubbuffer; int /*<<< orphan*/  iface; int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int MSHLFLAGS ;
typedef  int /*<<< orphan*/  IRpcStubBuffer ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct ifstub* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifstub*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MSHLFLAGSP_REMUNKNOWN ; 
 int MSHLFLAGS_NORMAL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ifstub*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct stub_manager*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

struct ifstub *FUNC14(struct stub_manager *m, IRpcStubBuffer *sb, REFIID iid, DWORD dest_context,
    void *dest_context_data, MSHLFLAGS flags)
{
    struct ifstub *stub;
    HRESULT hr;

    FUNC9("oid=%s, stubbuffer=%p, iid=%s, dest_context=%x\n", FUNC13(m->oid), *sb,
          FUNC10(iid), dest_context);

    stub = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(struct ifstub));
    if (!stub) return NULL;

    hr = FUNC5(m->object, iid, (void **)&stub->iface);
    if (hr != S_OK)
    {
        FUNC3(FUNC1(), 0, stub);
        return NULL;
    }

    hr = FUNC8(dest_context, dest_context_data, &stub->chan);
    if (hr != S_OK)
    {
        FUNC6(stub->iface);
        FUNC3(FUNC1(), 0, stub);
        return NULL;
    }

    stub->stubbuffer = sb;
    if (sb) FUNC4(sb);

    stub->flags = flags;
    stub->iid = *iid;

    /* FIXME: find a cleaner way of identifying that we are creating an ifstub
     * for the remunknown interface */
    if (flags & MSHLFLAGSP_REMUNKNOWN)
        stub->ipid = m->oxid_info.ipidRemUnknown;
    else
        FUNC11(m, &stub->ipid);

    FUNC0(&m->lock);
    FUNC12(&m->ifstubs, &stub->entry);
    /* every normal marshal is counted so we don't allow more than we should */
    if (flags & MSHLFLAGS_NORMAL) m->norm_refs++;
    FUNC7(&m->lock);

    FUNC9("ifstub %p created with ipid %s\n", stub, FUNC10(&stub->ipid));

    return stub;
}