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
typedef  int /*<<< orphan*/  emr ;
struct TYPE_14__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_13__ {scalar_t__ restoring; } ;
struct TYPE_12__ {int ihPal; TYPE_7__ emr; } ;
struct TYPE_11__ {int /*<<< orphan*/  hdc; } ;
typedef  TYPE_1__* PHYSDEV ;
typedef  int /*<<< orphan*/  HPALETTE ;
typedef  TYPE_2__ EMRSELECTPALETTE ;
typedef  TYPE_3__ EMFDRV_PDEVICE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int DEFAULT_PALETTE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  EMR_SELECTPALETTE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__* FUNC5 (TYPE_1__*) ; 

HPALETTE FUNC6( PHYSDEV dev, HPALETTE hPal, BOOL force )
{
    EMFDRV_PDEVICE *physDev = FUNC5( dev );
    EMRSELECTPALETTE emr;
    DWORD index;

    if (physDev->restoring) return hPal;  /* don't output SelectObject records during RestoreDC */

    if (hPal == FUNC4( DEFAULT_PALETTE ))
    {
        index = DEFAULT_PALETTE | 0x80000000;
        goto found;
    }

    if ((index = FUNC1( dev, hPal )) != 0)
        goto found;

    if (!(index = FUNC0( dev, hPal ))) return 0;
    FUNC3( hPal, dev->hdc );

found:
    emr.emr.iType = EMR_SELECTPALETTE;
    emr.emr.nSize = sizeof(emr);
    emr.ihPal = index;
    return FUNC2( dev, &emr.emr ) ? hPal : 0;
}