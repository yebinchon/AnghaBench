#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
struct TYPE_21__ {void* saveLevel; } ;
struct TYPE_20__ {int /*<<< orphan*/  restoring; } ;
struct TYPE_16__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_19__ {TYPE_14__ emr; void* iRelative; } ;
struct TYPE_18__ {TYPE_1__* funcs; } ;
struct TYPE_17__ {scalar_t__ (* pRestoreDC ) (TYPE_2__*,void*) ;} ;
typedef  TYPE_2__* PHYSDEV ;
typedef  void* INT ;
typedef  TYPE_3__ EMRRESTOREDC ;
typedef  TYPE_4__ EMFDRV_PDEVICE ;
typedef  TYPE_5__ DC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_14__*) ; 
 int /*<<< orphan*/  EMR_RESTOREDC ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_2__*) ; 
 TYPE_5__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  pRestoreDC ; 
 scalar_t__ FUNC4 (TYPE_2__*,void*) ; 

BOOL FUNC5( PHYSDEV dev, INT level )
{
    PHYSDEV next = FUNC1( dev, pRestoreDC );
    EMFDRV_PDEVICE* physDev = FUNC2( dev );
    DC *dc = FUNC3( dev );
    EMRRESTOREDC emr;
    BOOL ret;

    emr.emr.iType = EMR_RESTOREDC;
    emr.emr.nSize = sizeof(emr);

    if (level < 0)
        emr.iRelative = level;
    else
        emr.iRelative = level - dc->saveLevel - 1;

    physDev->restoring++;
    ret = next->funcs->pRestoreDC( next, level );
    physDev->restoring--;

    if (ret) FUNC0( dev, &emr.emr );
    return ret;
}