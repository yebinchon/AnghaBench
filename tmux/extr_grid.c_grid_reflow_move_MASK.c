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
struct grid_line {int dummy; } ;
struct grid {int dummy; } ;

/* Variables and functions */
 struct grid_line* FUNC0 (struct grid*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct grid_line*) ; 
 int /*<<< orphan*/  FUNC2 (struct grid_line*,struct grid_line*,int) ; 

__attribute__((used)) static struct grid_line *
FUNC3(struct grid *gd, struct grid_line *from)
{
	struct grid_line	*to;

	to = FUNC0(gd, 1);
	FUNC2(to, from, sizeof *to);
	FUNC1(from);
	return (to);
}