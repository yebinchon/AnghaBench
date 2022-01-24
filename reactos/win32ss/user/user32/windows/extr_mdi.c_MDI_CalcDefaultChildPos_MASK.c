#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int nTotalCreated; scalar_t__ nActiveChildren; scalar_t__ idFirstChild; } ;
struct TYPE_7__ {int bottom; int top; int right; int left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ MDICLIENTINFO ;
typedef  TYPE_3__* LPPOINT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CYCAPTION ; 
 int /*<<< orphan*/  SM_CYFRAME ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( HWND hwndClient, INT total, LPPOINT lpPos, INT delta, UINT *id )
{
    INT  nstagger;
    RECT rect;
    INT spacing = FUNC1(SM_CYCAPTION) + FUNC1(SM_CYFRAME) - 1;

    if (total < 0) /* we are called from CreateWindow */
    {
        MDICLIENTINFO *ci = FUNC3(hwndClient);
        total = ci ? ci->nTotalCreated : 0;                     // Do not portsync wine
        *id = ci ? ci->idFirstChild + ci->nActiveChildren : 0;  // Do not portsync wine
        FUNC2("MDI child id %04x\n", *id);
    }

    FUNC0( hwndClient, &rect );
    if( rect.bottom - rect.top - delta >= spacing )
	rect.bottom -= delta;

    nstagger = (rect.bottom - rect.top)/(3 * spacing);
    lpPos[1].x = (rect.right - rect.left - nstagger * spacing);
    lpPos[1].y = (rect.bottom - rect.top - nstagger * spacing);
    lpPos[0].x = lpPos[0].y = spacing * (total%(nstagger+1));
}