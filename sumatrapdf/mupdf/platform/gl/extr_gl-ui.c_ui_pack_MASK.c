#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_irect ;
struct TYPE_4__ {TYPE_1__* layout; } ;
struct TYPE_3__ {int /*<<< orphan*/  pady; int /*<<< orphan*/  padx; int /*<<< orphan*/  anchor; int /*<<< orphan*/  fill; int /*<<< orphan*/  side; } ;

/* Variables and functions */
 TYPE_2__ ui ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

fz_irect FUNC1(int slave_w, int slave_h)
{
	return FUNC0(slave_w, slave_h, ui.layout->side, ui.layout->fill, ui.layout->anchor, ui.layout->padx, ui.layout->pady);
}