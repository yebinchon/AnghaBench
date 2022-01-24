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
struct TYPE_7__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_6__ {scalar_t__ restoring; } ;
struct TYPE_5__ {TYPE_4__ emr; int /*<<< orphan*/  crColor; } ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  TYPE_1__ EMRSETTEXTCOLOR ;
typedef  TYPE_2__ EMFDRV_PDEVICE ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  CLR_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  EMR_SETTEXTCOLOR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 

COLORREF FUNC2( PHYSDEV dev, COLORREF color )
{
    EMRSETTEXTCOLOR emr;
    EMFDRV_PDEVICE *physDev = FUNC1( dev );

    if (physDev->restoring) return color;  /* don't output records during RestoreDC */

    emr.emr.iType = EMR_SETTEXTCOLOR;
    emr.emr.nSize = sizeof(emr);
    emr.crColor = color;
    return FUNC0( dev, &emr.emr ) ? color : CLR_INVALID;
}