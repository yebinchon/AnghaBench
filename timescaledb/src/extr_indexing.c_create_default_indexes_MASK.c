#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  column_name; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_12__ {int /*<<< orphan*/  ordering; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  expr; } ;
typedef  TYPE_2__ IndexElem ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_3__ Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORTBY_ASC ; 
 int /*<<< orphan*/  SORTBY_DESC ; 
 int /*<<< orphan*/  T_IndexElem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(Hypertable *ht, Dimension *time_dim, Dimension *space_dim, bool has_time_idx,
					   bool has_time_space_idx)
{
	IndexElem telem = {
		.type = T_IndexElem,
		.name = FUNC3(time_dim),
		.ordering = SORTBY_DESC,
		.expr = FUNC2(time_dim),
	};

	/* In case we'd allow tables that are only space partitioned */
	if (NULL == time_dim)
		return;

	/* Create ("time") index */
	if (!has_time_idx)
		FUNC1(ht, FUNC4(&telem));

	/* Create ("space", "time") index */
	if (space_dim != NULL && !has_time_space_idx)
	{
		IndexElem selem = {
			.type = T_IndexElem,
			.name = FUNC0(space_dim->fd.column_name),
			.ordering = SORTBY_ASC,
		};

		FUNC1(ht, FUNC5(&selem, &telem));
	}
}