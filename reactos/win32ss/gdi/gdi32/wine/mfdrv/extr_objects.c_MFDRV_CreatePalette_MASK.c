#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_5__ {int rdSize; int* rdParm; int /*<<< orphan*/  rdFunction; } ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  TYPE_1__ METARECORD ;
typedef  int /*<<< orphan*/  LOGPALETTE ;
typedef  int /*<<< orphan*/  HPALETTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  META_CREATEPALETTE ; 
 int /*<<< orphan*/  META_SELECTPALETTE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int**,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC6(PHYSDEV dev, HPALETTE hPalette, LOGPALETTE* logPalette, int sizeofPalette)
{
    int index;
    BOOL ret;
    METARECORD *mr;

    mr = FUNC1( FUNC0(), 0, sizeof(METARECORD) + sizeofPalette - sizeof(WORD) );
    mr->rdSize = (sizeof(METARECORD) + sizeofPalette - sizeof(WORD)) / sizeof(WORD);
    mr->rdFunction = META_CREATEPALETTE;
    FUNC5(&(mr->rdParm), logPalette, sizeofPalette);
    if (!(FUNC4( dev, mr, mr->rdSize * sizeof(WORD))))
    {
        FUNC2(FUNC0(), 0, mr);
        return FALSE;
    }

    mr->rdSize = sizeof(METARECORD) / sizeof(WORD);
    mr->rdFunction = META_SELECTPALETTE;

    if ((index = FUNC3( dev, hPalette )) == -1) ret = FALSE;
    else
    {
        *(mr->rdParm) = index;
        ret = FUNC4( dev, mr, mr->rdSize * sizeof(WORD));
    }
    FUNC2(FUNC0(), 0, mr);
    return ret;
}