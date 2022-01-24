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
struct options {struct options* parent; int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct options* FUNC1 (int,int) ; 

struct options *
FUNC2(struct options *parent)
{
	struct options	*oo;

	oo = FUNC1(1, sizeof *oo);
	FUNC0(&oo->tree);
	oo->parent = parent;
	return (oo);
}