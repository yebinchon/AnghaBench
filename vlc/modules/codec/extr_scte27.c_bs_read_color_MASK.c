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
struct TYPE_3__ {int y; int alpha; int v; int u; } ;
typedef  TYPE_1__ scte27_color_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static scte27_color_t FUNC2(bs_t *bs)
{
    scte27_color_t color;

    /* XXX it's unclear if a value of 0 in Y/U/V means a transparent pixel */
    color.y     = FUNC0(bs, 5) << 3;
    color.alpha = FUNC1(bs) ? 0xff : 0x80;
    color.v     = FUNC0(bs, 5) << 3;
    color.u     = FUNC0(bs, 5) << 3;

    return color;
}