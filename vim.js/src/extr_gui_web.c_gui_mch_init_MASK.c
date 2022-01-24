#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_2__ {int /*<<< orphan*/  in_focus; void* norm_pixel; void* def_norm_pixel; void* back_pixel; void* def_back_pixel; scalar_t__ scrollbar_height; scalar_t__ scrollbar_width; scalar_t__ border_width; scalar_t__ border_offset; } ;

/* Variables and functions */
 int Columns ; 
 int OK ; 
 int Rows ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(void)
{
    FUNC7();
    gui.border_offset = 0;
    gui.border_width = 0;
    gui.scrollbar_width = 0;
    gui.scrollbar_height = 0;

    gui.back_pixel = FUNC1((char_u*)"black");
    gui.norm_pixel = FUNC1((char_u*)"white");

    FUNC2();
    FUNC0();

    gui.def_back_pixel = gui.back_pixel;
    gui.def_norm_pixel = gui.norm_pixel;

    gui.in_focus = TRUE; 

    Rows = FUNC5() / FUNC3();
    Columns = FUNC6() / FUNC4();

    return OK;
}