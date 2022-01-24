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
struct TYPE_21__ {int /*<<< orphan*/  physDev; } ;
struct TYPE_20__ {scalar_t__ path; int /*<<< orphan*/  pathdev; } ;
struct TYPE_16__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_19__ {TYPE_14__ emr; } ;
struct TYPE_18__ {TYPE_1__* funcs; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* pBeginPath ) (TYPE_2__*) ;} ;
typedef  TYPE_2__* PHYSDEV ;
typedef  TYPE_3__ EMRBEGINPATH ;
typedef  TYPE_4__ EMFDRV_PDEVICE ;
typedef  TYPE_5__ DC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_14__*) ; 
 int /*<<< orphan*/  EMR_BEGINPATH ; 
 scalar_t__ FALSE ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  emfpath_driver ; 
 TYPE_4__* FUNC2 (TYPE_2__*) ; 
 TYPE_5__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  pBeginPath ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

BOOL FUNC6( PHYSDEV dev )
{
    EMFDRV_PDEVICE *physDev = FUNC2( dev );
    PHYSDEV next = FUNC1( dev, pBeginPath );
    EMRBEGINPATH emr;
    DC *dc = FUNC3( dev );

    emr.emr.iType = EMR_BEGINPATH;
    emr.emr.nSize = sizeof(emr);

    if (!FUNC0( dev, &emr.emr )) return FALSE;
    if (physDev->path) return TRUE;  /* already open */

    if (!next->funcs->pBeginPath( next )) return FALSE;
    FUNC4( &dc->physDev, &physDev->pathdev, &emfpath_driver );
    physDev->path = TRUE;
    return TRUE;
}