#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct brush_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  pen ;
struct TYPE_15__ {scalar_t__ y; int /*<<< orphan*/  x; } ;
struct TYPE_19__ {int /*<<< orphan*/  elpColor; int /*<<< orphan*/  elpWidth; int /*<<< orphan*/  elpPenStyle; int /*<<< orphan*/  lopnColor; TYPE_1__ lopnWidth; int /*<<< orphan*/  lopnStyle; } ;
struct TYPE_16__ {scalar_t__ y; int /*<<< orphan*/  x; } ;
struct TYPE_18__ {int /*<<< orphan*/  lopnColor; TYPE_2__ lopnWidth; int /*<<< orphan*/  lopnStyle; } ;
struct TYPE_17__ {int /*<<< orphan*/  hdc; } ;
typedef  TYPE_3__* PHYSDEV ;
typedef  TYPE_4__ LOGPEN16 ;
typedef  TYPE_5__ LOGPEN ;
typedef  scalar_t__ INT16 ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  TYPE_5__ EXTLOGPEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__) ; 

HPEN FUNC8( PHYSDEV dev, HPEN hpen, const struct brush_pattern *pattern )
{
    LOGPEN16 logpen;
    INT16 index;

    index = FUNC6(dev, hpen);
    if( index < 0 )
    {
        /* must be an extended pen */
        INT size = FUNC1( hpen, 0, NULL );

        if (!size) return 0;

        if (size == sizeof(LOGPEN))
        {
            LOGPEN pen;

            FUNC1( hpen, sizeof(pen), &pen );
            logpen.lopnStyle   = pen.lopnStyle;
            logpen.lopnWidth.x = pen.lopnWidth.x;
            logpen.lopnWidth.y = pen.lopnWidth.y;
            logpen.lopnColor   = pen.lopnColor;
        }
        else  /* must be an extended pen */
        {
            EXTLOGPEN *elp = FUNC3( FUNC2(), 0, size );

            FUNC1( hpen, size, elp );
            /* FIXME: add support for user style pens */
            logpen.lopnStyle = elp->elpPenStyle;
            logpen.lopnWidth.x = elp->elpWidth;
            logpen.lopnWidth.y = 0;
            logpen.lopnColor = elp->elpColor;

            FUNC4( FUNC2(), 0, elp );
        }

        index = FUNC5( dev, hpen, &logpen );
        if( index < 0 )
            return 0;
        FUNC0(hpen, dev->hdc);
    }
    return FUNC7( dev, index ) ? hpen : 0;
}