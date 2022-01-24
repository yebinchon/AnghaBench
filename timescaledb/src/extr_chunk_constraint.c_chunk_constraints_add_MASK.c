#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* int32 ;
struct TYPE_8__ {int /*<<< orphan*/  hypertable_constraint_name; int /*<<< orphan*/  constraint_name; void* chunk_id; void* dimension_slice_id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int /*<<< orphan*/  num_dimension_constraints; scalar_t__ num_constraints; TYPE_3__* constraints; } ;
typedef  TYPE_2__ ChunkConstraints ;
typedef  TYPE_3__ ChunkConstraint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,void*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static ChunkConstraint *
FUNC4(ChunkConstraints *ccs, int32 chunk_id, int32 dimension_slice_id,
					  const char *constraint_name, const char *hypertable_constraint_name)
{
	ChunkConstraint *cc;

	FUNC1(ccs, ccs->num_constraints + 1);
	cc = &ccs->constraints[ccs->num_constraints++];
	cc->fd.chunk_id = chunk_id;
	cc->fd.dimension_slice_id = dimension_slice_id;

	if (NULL == constraint_name)
	{
		FUNC0(&cc->fd.constraint_name,
									 FUNC2(cc),
									 cc->fd.dimension_slice_id,
									 hypertable_constraint_name,
									 cc->fd.chunk_id);

		if (FUNC2(cc))
			FUNC3(&cc->fd.hypertable_constraint_name, "");
	}
	else
		FUNC3(&cc->fd.constraint_name, constraint_name);

	if (NULL != hypertable_constraint_name)
		FUNC3(&cc->fd.hypertable_constraint_name, hypertable_constraint_name);

	if (FUNC2(cc))
		ccs->num_dimension_constraints++;

	return cc;
}