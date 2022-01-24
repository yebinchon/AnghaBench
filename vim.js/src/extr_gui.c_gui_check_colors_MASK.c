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
struct TYPE_2__ {scalar_t__ norm_pixel; scalar_t__ back_pixel; } ;

/* Variables and functions */
 scalar_t__ INVALCOLOR ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2()
{
    if (gui.norm_pixel == gui.back_pixel || gui.norm_pixel == INVALCOLOR)
    {
	FUNC0((char_u *)"White");
	if (gui.norm_pixel == gui.back_pixel || gui.norm_pixel == INVALCOLOR)
	    FUNC1((char_u *)"Black");
    }
}