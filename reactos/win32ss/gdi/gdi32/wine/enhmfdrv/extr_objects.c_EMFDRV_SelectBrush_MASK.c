#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct brush_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  emr ;
struct TYPE_14__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_13__ {scalar_t__ restoring; } ;
struct TYPE_12__ {int ihObject; TYPE_7__ emr; } ;
struct TYPE_11__ {int /*<<< orphan*/  hdc; } ;
typedef  TYPE_1__* PHYSDEV ;
typedef  scalar_t__ HBRUSH ;
typedef  TYPE_2__ EMRSELECTOBJECT ;
typedef  TYPE_3__ EMFDRV_PDEVICE ;
typedef  int DWORD ;

/* Variables and functions */
 int DC_BRUSH ; 
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  EMR_SELECTOBJECT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int WHITE_BRUSH ; 
 TYPE_3__* FUNC5 (TYPE_1__*) ; 

HBRUSH FUNC6( PHYSDEV dev, HBRUSH hBrush, const struct brush_pattern *pattern )
{
    EMFDRV_PDEVICE *physDev = FUNC5( dev );
    EMRSELECTOBJECT emr;
    DWORD index;
    int i;

    if (physDev->restoring) return hBrush;  /* don't output SelectObject records during RestoreDC */

    /* If the object is a stock brush object, do not need to create it.
     * See definitions in  wingdi.h for range of stock brushes.
     * We do however have to handle setting the higher order bit to
     * designate that this is a stock object.
     */
    for (i = WHITE_BRUSH; i <= DC_BRUSH; i++)
    {
        if (hBrush == FUNC4(i))
        {
            index = i | 0x80000000;
            goto found;
        }
    }
    if((index = FUNC1(dev, hBrush)) != 0)
        goto found;

    if (!(index = FUNC0(dev, hBrush ))) return 0;
    FUNC3(hBrush, dev->hdc);

 found:
    emr.emr.iType = EMR_SELECTOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;
    return FUNC2( dev, &emr.emr ) ? hBrush : 0;
}