#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_2__ fd; } ;
struct TYPE_11__ {TYPE_1__* space; } ;
struct TYPE_10__ {int /*<<< orphan*/  newname; int /*<<< orphan*/  subname; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_dimensions; } ;
typedef  TYPE_3__ RenameStmt ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ Hypertable ;
typedef  TYPE_5__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(Hypertable *ht, Oid chunk_relid, void *arg)
{
	RenameStmt *stmt = (RenameStmt *) arg;
	Chunk *chunk = FUNC1(chunk_relid, ht->space->num_dimensions, true);

	FUNC0(chunk->fd.id, stmt->subname, stmt->newname);
}