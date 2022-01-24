#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
struct TYPE_21__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_25__ {TYPE_3__ cur_pos; } ;
struct TYPE_24__ {int /*<<< orphan*/  path; } ;
struct TYPE_18__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_19__ {void* y; void* x; } ;
struct TYPE_23__ {TYPE_14__ emr; TYPE_1__ ptl; } ;
struct TYPE_22__ {int /*<<< orphan*/  hdc; } ;
struct TYPE_20__ {void* bottom; void* right; void* top; void* left; } ;
typedef  TYPE_2__ RECTL ;
typedef  TYPE_3__ POINT ;
typedef  TYPE_4__* PHYSDEV ;
typedef  void* INT ;
typedef  TYPE_5__ EMRLINETO ;
typedef  TYPE_6__ EMFDRV_PDEVICE ;
typedef  TYPE_7__ DC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_14__*) ; 
 int /*<<< orphan*/  EMR_LINETO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__* FUNC3 (TYPE_4__*) ; 
 TYPE_7__* FUNC4 (TYPE_4__*) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ) ; 

BOOL FUNC7( PHYSDEV dev, INT x, INT y )
{
    EMFDRV_PDEVICE *physDev = FUNC3( dev );
#ifndef __REACTOS__
    DC *dc = FUNC4( dev );
#endif
    POINT pt;
    EMRLINETO emr;
    RECTL bounds;

    emr.emr.iType = EMR_LINETO;
    emr.emr.nSize = sizeof(emr);
    emr.ptl.x = x;
    emr.ptl.y = y;

    if(!FUNC1( dev, &emr.emr ))
    	return FALSE;
#ifdef __REACTOS__
    GetCurrentPositionEx( dev->hdc, &pt );
#else
    pt = dc->cur_pos;
#endif
    bounds.left   = FUNC6(x, pt.x);
    bounds.top    = FUNC6(y, pt.y);
    bounds.right  = FUNC5(x, pt.x);
    bounds.bottom = FUNC5(y, pt.y);

    if(!physDev->path)
        FUNC0( dev, &bounds );

    return TRUE;
}