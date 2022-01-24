#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_19__ {scalar_t__ restoring; } ;
struct TYPE_15__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_18__ {int ihObject; TYPE_11__ emr; } ;
struct TYPE_17__ {TYPE_1__* funcs; int /*<<< orphan*/  hdc; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* pSelectFont ) (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__* PHYSDEV ;
typedef  scalar_t__ HFONT ;
typedef  TYPE_3__ EMRSELECTOBJECT ;
typedef  TYPE_4__ EMFDRV_PDEVICE ;
typedef  int DWORD ;

/* Variables and functions */
 int DEFAULT_GUI_FONT ; 
 int DEFAULT_PALETTE ; 
 int FUNC0 (TYPE_2__*,scalar_t__) ; 
 int FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_11__*) ; 
 int /*<<< orphan*/  EMR_SELECTOBJECT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GGO_BITMAP ; 
 scalar_t__ FUNC5 (int) ; 
 int OEM_FIXED_FONT ; 
 TYPE_4__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  pSelectFont ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 

HFONT FUNC8( PHYSDEV dev, HFONT hFont, UINT *aa_flags )
{
    EMFDRV_PDEVICE *physDev = FUNC6( dev );
    EMRSELECTOBJECT emr;
    DWORD index;
    int i;

    if (physDev->restoring) goto done;  /* don't output SelectObject records during RestoreDC */

    /* If the object is a stock font object, do not need to create it.
     * See definitions in  wingdi.h for range of stock fonts.
     * We do however have to handle setting the higher order bit to
     * designate that this is a stock object.
     */

    for (i = OEM_FIXED_FONT; i <= DEFAULT_GUI_FONT; i++)
    {
        if (i != DEFAULT_PALETTE && hFont == FUNC5(i))
        {
            index = i | 0x80000000;
            goto found;
        }
    }

    if((index = FUNC1(dev, hFont)) != 0)
        goto found;

    if (!(index = FUNC0(dev, hFont ))) return 0;
    FUNC3(hFont, dev->hdc);

 found:
    emr.emr.iType = EMR_SELECTOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;
    if(!FUNC2( dev, &emr.emr ))
        return 0;
done:
    *aa_flags = GGO_BITMAP;  /* no point in anti-aliasing on metafiles */
    dev = FUNC4( dev, pSelectFont );
    dev->funcs->pSelectFont( dev, hFont, aa_flags );
    return hFont;
}