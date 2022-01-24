#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  constraint_name; } ;
struct TYPE_9__ {TYPE_1__ fd; } ;
struct TYPE_8__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  TYPE_3__ ChunkConstraint ;

/* Variables and functions */
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(ChunkConstraint *cc, Oid chunk_oid)
{
	ObjectAddress constrobj = {
		.classId = ConstraintRelationId,
		.objectId = FUNC2(chunk_oid, FUNC0(cc->fd.constraint_name), false),
	};

	FUNC3(&constrobj, DROP_RESTRICT, 0);
	FUNC1(cc, chunk_oid);
}