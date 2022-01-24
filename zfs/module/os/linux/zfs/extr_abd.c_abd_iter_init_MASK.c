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
struct abd_iter {int /*<<< orphan*/ * iter_sg; int /*<<< orphan*/  iter_offset; scalar_t__ iter_pos; scalar_t__ iter_mapsize; int /*<<< orphan*/ * iter_mapaddr; int /*<<< orphan*/ * iter_abd; } ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_2__ {int /*<<< orphan*/ * abd_sgl; int /*<<< orphan*/  abd_offset; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct abd_iter *aiter, abd_t *abd, int km_type)
{
	FUNC2(abd);
	aiter->iter_abd = abd;
	aiter->iter_mapaddr = NULL;
	aiter->iter_mapsize = 0;
	aiter->iter_pos = 0;
	if (FUNC1(abd)) {
		aiter->iter_offset = 0;
		aiter->iter_sg = NULL;
	} else {
		aiter->iter_offset = FUNC0(abd).abd_offset;
		aiter->iter_sg = FUNC0(abd).abd_sgl;
	}
}