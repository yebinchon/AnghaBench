#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hypertable_id; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ fd; int /*<<< orphan*/  hypertable_relid; int /*<<< orphan*/  table_id; int /*<<< orphan*/  constraints; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ChunkConstraint ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(Chunk *chunk, Oid constraint_oid)
{
	const char *constrname;
	ChunkConstraint *cc;

	constrname = FUNC3(constraint_oid);
	cc = FUNC2(chunk->constraints, chunk->fd.id, 0, NULL, constrname);

	FUNC1(cc);

	FUNC0(cc,
							chunk->table_id,
							chunk->fd.id,
							chunk->hypertable_relid,
							chunk->fd.hypertable_id);
}