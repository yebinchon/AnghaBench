#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_4__ {scalar_t__ num_coords; int /*<<< orphan*/  cardinality; } ;
typedef  TYPE_1__ Point ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Point *
FUNC2(int16 num_dimensions)
{
	Point *p = FUNC1(FUNC0(num_dimensions));

	p->cardinality = num_dimensions;
	p->num_coords = 0;

	return p;
}