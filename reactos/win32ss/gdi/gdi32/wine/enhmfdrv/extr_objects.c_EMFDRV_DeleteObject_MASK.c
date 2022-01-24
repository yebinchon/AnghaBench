#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
typedef  int UINT ;
struct TYPE_7__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_6__ {int /*<<< orphan*/  cur_handles; scalar_t__* handles; } ;
struct TYPE_5__ {int ihObject; TYPE_4__ emr; } ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  TYPE_1__ EMRDELETEOBJECT ;
typedef  TYPE_2__ EMFDRV_PDEVICE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  EMR_DELETEOBJECT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

BOOL FUNC3( PHYSDEV dev, HGDIOBJ obj )
{
    EMRDELETEOBJECT emr;
    EMFDRV_PDEVICE *physDev = FUNC2( dev );
    UINT index;
    BOOL ret = TRUE;

    if(!(index = FUNC0(dev, obj))) return FALSE;

    emr.emr.iType = EMR_DELETEOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;

    if(!FUNC1( dev, &emr.emr ))
        ret = FALSE;

    physDev->handles[index - 1] = 0;
    physDev->cur_handles--;
    return ret;
}