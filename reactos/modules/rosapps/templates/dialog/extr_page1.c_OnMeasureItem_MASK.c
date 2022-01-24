#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lfHeight; } ;
struct TYPE_5__ {int /*<<< orphan*/  itemHeight; } ;
typedef  TYPE_1__* LPMEASUREITEMSTRUCT ;
typedef  TYPE_2__ LOGFONT ;
typedef  int /*<<< orphan*/  HFONT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSTEM_FONT ; 

void FUNC2(LPMEASUREITEMSTRUCT lpMeasureItemStruct)
{
    HFONT hFont;
	LOGFONT lf;

    hFont = FUNC1(SYSTEM_FONT);
    FUNC0(hFont, sizeof(LOGFONT), &lf);
	if (lf.lfHeight < 0)
		lpMeasureItemStruct->itemHeight = -lf.lfHeight;
	else
		lpMeasureItemStruct->itemHeight = lf.lfHeight;
}