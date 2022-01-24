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
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
struct drivecollection {int ref; int drives; TYPE_1__ IDriveCollection_iface; int /*<<< orphan*/  classinfo; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IDriveCollection ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_Drives ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  drivecollectionvtbl ; 
 struct drivecollection* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(IDriveCollection **drives)
{
    struct drivecollection *This;
    DWORD mask;

    *drives = NULL;

    This = FUNC1(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IDriveCollection_iface.lpVtbl = &drivecollectionvtbl;
    This->ref = 1;
    This->drives = mask = FUNC0();
    /* count set bits */
    for (This->count = 0; mask; This->count++)
        mask &= mask - 1;

    FUNC2(&CLSID_Drives, (IUnknown *)&This->IDriveCollection_iface, &This->classinfo);
    *drives = &This->IDriveCollection_iface;
    return S_OK;
}