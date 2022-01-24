#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current_bounds ; 
 int /*<<< orphan*/  dst_format ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4( HDC hdc, const char *info )
{
    RECT rect;

    FUNC1( hdc, &rect, DCB_RESET );

    if (current_bounds->left == -1 &&
        current_bounds->top == -1 &&
        current_bounds->right == -1 &&
        current_bounds->bottom == -1)
    {
        FUNC2( 0, "missing bounds, got %s,\n", FUNC3( &rect ));
        return;
    }

    FUNC2( FUNC0( current_bounds, &rect ), "%s: %s: expected bounds %s got %s\n", dst_format, info,
        FUNC3( current_bounds ), FUNC3( &rect ));
    current_bounds++;
}