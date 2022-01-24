#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ color_range; int /*<<< orphan*/  space; int /*<<< orphan*/  transfer; int /*<<< orphan*/  primaries; } ;
typedef  TYPE_1__ video_format_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 scalar_t__ COLOR_RANGE_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bo_t *FUNC7(const video_format_t *p_vfmt, bool b_mov)
{
    bo_t *p_box = FUNC3("colr");
    if(p_box)
    {
        FUNC2(p_box, 4, b_mov ? "nclc" : "nclx");
        FUNC0(p_box, FUNC5(p_vfmt->primaries));
        FUNC0(p_box, FUNC6(p_vfmt->transfer));
        FUNC0(p_box, FUNC4(p_vfmt->space));
        FUNC1(p_box, p_vfmt->color_range == COLOR_RANGE_FULL ? 0x80 : 0x00);
    }
    return p_box;
}