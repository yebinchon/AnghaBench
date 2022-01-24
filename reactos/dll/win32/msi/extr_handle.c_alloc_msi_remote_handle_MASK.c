#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * unk; } ;
struct TYPE_5__ {int /*<<< orphan*/  remote; int /*<<< orphan*/  dwThreadId; TYPE_1__ u; } ;
typedef  TYPE_2__ msi_handle_info ;
typedef  int MSIHANDLE ;
typedef  int /*<<< orphan*/  IUnknown ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSI_handle_cs ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC5 () ; 
 TYPE_2__* msihandletable ; 

MSIHANDLE FUNC6( IUnknown *unk )
{
    msi_handle_info *entry;
    MSIHANDLE ret;

    FUNC0( &MSI_handle_cs );

    ret = FUNC5();
    if (ret)
    {
        entry = &msihandletable[ ret - 1 ];
        FUNC2( unk );
        entry->u.unk = unk;
        entry->dwThreadId = FUNC1();
        entry->remote = TRUE;
    }

    FUNC3( &MSI_handle_cs );

    FUNC4("%p -> %d\n", unk, ret);

    return ret;
}