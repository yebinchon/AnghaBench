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
struct TYPE_9__ {int left; int top; int right; int bottom; } ;
struct TYPE_7__ {int nCount; } ;
struct TYPE_8__ {TYPE_1__ rdh; scalar_t__ Buffer; } ;
typedef  TYPE_2__ RGNDATA ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(HRGN hrgn)
{
    DWORD i, size;
    RGNDATA *data = NULL;
    RECT *rect;

    if (!hrgn)
    {
        FUNC4( "(null) region\n" );
        return;
    }
    if (!(size = FUNC1( hrgn, 0, NULL ))) return;
    if (!(data = FUNC2( FUNC0(), 0, size ))) return;
    FUNC1( hrgn, size, data );
    FUNC4( "%d rects:", data->rdh.nCount );
    for (i = 0, rect = (RECT *)data->Buffer; i < data->rdh.nCount; i++, rect++)
        FUNC4( " (%d,%d)-(%d,%d)", rect->left, rect->top, rect->right, rect->bottom );
    FUNC4( "\n" );
    FUNC3( FUNC0(), 0, data );
}