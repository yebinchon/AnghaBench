#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; int /*<<< orphan*/ * protocol; int /*<<< orphan*/ * cache_file; int /*<<< orphan*/  hres; int /*<<< orphan*/  file; TYPE_1__ IUnknown_iface; } ;
typedef  TYPE_2__ stgmed_buf_t ;
typedef  int /*<<< orphan*/  IInternetProtocolEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StgMedUnkVtbl ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int) ; 

__attribute__((used)) static stgmed_buf_t *FUNC3(IInternetProtocolEx *protocol)
{
    stgmed_buf_t *ret = FUNC2(sizeof(*ret));

    ret->IUnknown_iface.lpVtbl = &StgMedUnkVtbl;
    ret->ref = 1;
    ret->file = INVALID_HANDLE_VALUE;
    ret->hres = S_OK;
    ret->cache_file = NULL;

    FUNC0(protocol);
    ret->protocol = protocol;

    FUNC1();

    return ret;
}