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
struct TYPE_4__ {int /*<<< orphan*/ * obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  remote; int /*<<< orphan*/  dwThreadId; TYPE_1__ u; } ;
typedef  TYPE_2__ msi_handle_info ;
typedef  int /*<<< orphan*/  MSIOBJECTHDR ;
typedef  int MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSI_handle_cs ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 () ; 
 TYPE_2__* msihandletable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

MSIHANDLE FUNC6( MSIOBJECTHDR *obj )
{
    msi_handle_info *entry;
    MSIHANDLE ret;

    FUNC0( &MSI_handle_cs );

    ret = FUNC4();
    if (ret)
    {
        entry = &msihandletable[ ret - 1 ];
        FUNC5( obj );
        entry->u.obj = obj;
        entry->dwThreadId = FUNC1();
        entry->remote = FALSE;
    }

    FUNC2( &MSI_handle_cs );

    FUNC3("%p -> %d\n", obj, ret );

    return ret;
}