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
struct TYPE_6__ {int /*<<< orphan*/  hDC; } ;
struct TYPE_5__ {scalar_t__ nWidth; int /*<<< orphan*/  style; } ;
typedef  TYPE_1__ ME_Run ;
typedef  TYPE_2__ ME_Context ;
typedef  scalar_t__ HPEN ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( ME_Context *c, ME_Run *run, int x, int y, COLORREF color )
{
    HPEN pen;

    pen = FUNC4( run->style, color );
    if (pen)
    {
        HPEN old_pen = FUNC3( c->hDC, pen );
        FUNC2( c->hDC, x, y + 1, NULL );
        FUNC1( c->hDC, x + run->nWidth, y + 1 );
        FUNC3( c->hDC, old_pen );
        FUNC0( pen );
    }
    return;
}