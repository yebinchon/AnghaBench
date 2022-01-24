#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* WORD ;
struct TYPE_13__ {void* top; int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; } ;
struct TYPE_10__ {int left; int top; int right; int bottom; } ;
struct TYPE_11__ {int nCount; TYPE_1__ rcBound; } ;
struct TYPE_12__ {void** rdParm; void* rdFunction; int rdSize; TYPE_2__ rdh; scalar_t__ Buffer; } ;
typedef  TYPE_3__ RGNDATA ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  TYPE_3__ METARECORD ;
typedef  int INT16 ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* META_CREATEREGION ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static INT16 FUNC7(PHYSDEV dev, HRGN hrgn)
{
    DWORD len;
    METARECORD *mr;
    RGNDATA *rgndata;
    RECT *pCurRect, *pEndRect;
    WORD Bands = 0, MaxBands = 0;
    WORD *Param, *StartBand;
    BOOL ret;

    if (!(len = FUNC1( hrgn, 0, NULL ))) return -1;
    if( !(rgndata = FUNC2( FUNC0(), 0, len )) ) {
        FUNC6("Can't alloc rgndata buffer\n");
	return -1;
    }
    FUNC1( hrgn, len, rgndata );

    /* Overestimate of length:
     * Assume every rect is a separate band -> 6 WORDs per rect
     */
    len = sizeof(METARECORD) + 20 + (rgndata->rdh.nCount * 12);
    if( !(mr = FUNC2( FUNC0(), HEAP_ZERO_MEMORY, len )) ) {
        FUNC6("Can't alloc METARECORD buffer\n");
	FUNC3( FUNC0(), 0, rgndata );
	return -1;
    }

    Param = mr->rdParm + 11;
    StartBand = NULL;

    pEndRect = (RECT *)rgndata->Buffer + rgndata->rdh.nCount;
    for(pCurRect = (RECT *)rgndata->Buffer; pCurRect < pEndRect; pCurRect++)
    {
        if( StartBand && pCurRect->top == *(StartBand + 1) )
        {
	    *Param++ = pCurRect->left;
	    *Param++ = pCurRect->right;
	}
	else
	{
	    if(StartBand)
	    {
	        *StartBand = Param - StartBand - 3;
		*Param++ = *StartBand;
		if(*StartBand > MaxBands)
		    MaxBands = *StartBand;
		Bands++;
	    }
	    StartBand = Param++;
	    *Param++ = pCurRect->top;
	    *Param++ = pCurRect->bottom;
	    *Param++ = pCurRect->left;
	    *Param++ = pCurRect->right;
	}
    }

    if (StartBand)
    {
        *StartBand = Param - StartBand - 3;
        *Param++ = *StartBand;
        if(*StartBand > MaxBands)
            MaxBands = *StartBand;
        Bands++;
    }

    mr->rdParm[0] = 0;
    mr->rdParm[1] = 6;
    mr->rdParm[2] = 0x2f6;
    mr->rdParm[3] = 0;
    mr->rdParm[4] = (Param - &mr->rdFunction) * sizeof(WORD);
    mr->rdParm[5] = Bands;
    mr->rdParm[6] = MaxBands;
    mr->rdParm[7] = rgndata->rdh.rcBound.left;
    mr->rdParm[8] = rgndata->rdh.rcBound.top;
    mr->rdParm[9] = rgndata->rdh.rcBound.right;
    mr->rdParm[10] = rgndata->rdh.rcBound.bottom;
    mr->rdFunction = META_CREATEREGION;
    mr->rdSize = Param - (WORD *)mr;
    ret = FUNC5( dev, mr, mr->rdSize * 2 );
    FUNC3( FUNC0(), 0, mr );
    FUNC3( FUNC0(), 0, rgndata );
    if(!ret)
    {
        FUNC6("MFDRV_WriteRecord failed\n");
	return -1;
    }
    return FUNC4( dev, hrgn );
}