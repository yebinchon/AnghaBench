#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct screen {int /*<<< orphan*/  grid; int /*<<< orphan*/  ccolour; int /*<<< orphan*/  title; int /*<<< orphan*/  tabs; int /*<<< orphan*/  sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*) ; 

void
FUNC3(struct screen *s)
{
	FUNC0(s->sel);
	FUNC0(s->tabs);
	FUNC0(s->title);
	FUNC0(s->ccolour);

	FUNC1(s->grid);

	FUNC2(s);
}