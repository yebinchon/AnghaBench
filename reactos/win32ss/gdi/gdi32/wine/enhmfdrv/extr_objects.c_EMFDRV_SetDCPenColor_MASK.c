#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
struct TYPE_22__ {scalar_t__ hPen; } ;
struct TYPE_21__ {scalar_t__ dc_pen; } ;
struct TYPE_16__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_20__ {TYPE_12__ emr; int /*<<< orphan*/  ihObject; } ;
struct TYPE_17__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {int /*<<< orphan*/  member_2; TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {int /*<<< orphan*/  hdc; } ;
typedef  TYPE_2__* PHYSDEV ;
typedef  TYPE_3__ LOGPEN ;
typedef  TYPE_4__ EMRSELECTOBJECT ;
typedef  TYPE_5__ EMFDRV_PDEVICE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_6__ DC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  CLR_INVALID ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_12__*) ; 
 int /*<<< orphan*/  EMR_SELECTOBJECT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_PEN ; 
 int /*<<< orphan*/  PS_SOLID ; 
 TYPE_5__* FUNC7 (TYPE_2__*) ; 
 TYPE_6__* FUNC8 (TYPE_2__*) ; 

COLORREF FUNC9( PHYSDEV dev, COLORREF color )
{
    EMFDRV_PDEVICE *physDev = FUNC7( dev );
#ifndef __REACTOS__
    DC *dc = FUNC8( dev );
#endif
    EMRSELECTOBJECT emr;
    DWORD index;
    LOGPEN logpen = { PS_SOLID, { 0, 0 }, color };
#ifdef __REACTOS__
    if (GetCurrentObject( dev->hdc, OBJ_PEN ) != GetStockObject( DC_PEN )) return color;
#else
    if (dc->hPen != FUNC6( DC_PEN )) return color;
#endif
    if (physDev->dc_pen) FUNC1( physDev->dc_pen );
    if (!(physDev->dc_pen = FUNC0( &logpen ))) return CLR_INVALID;
    if (!(index = FUNC2(dev, physDev->dc_pen))) return CLR_INVALID;
    FUNC4( physDev->dc_pen, dev->hdc );
    emr.emr.iType = EMR_SELECTOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;
    return FUNC3( dev, &emr.emr ) ? color : CLR_INVALID;
}