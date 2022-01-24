#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int x; int width; int y; int height; int /*<<< orphan*/  scale; } ;
typedef  TYPE_1__ spu_area_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(spu_area_t *area, const spu_area_t *boundary)
{
    spu_area_t a = FUNC0(*area);

    const int i_error_x = (a.x + a.width) - boundary->width;
    if (i_error_x > 0)
        a.x -= i_error_x;
    if (a.x < 0)
        a.x = 0;

    const int i_error_y = (a.y + a.height) - boundary->height;
    if (i_error_y > 0)
        a.y -= i_error_y;
    if (a.y < 0)
        a.y = 0;

    *area = FUNC1(a, area->scale);
}