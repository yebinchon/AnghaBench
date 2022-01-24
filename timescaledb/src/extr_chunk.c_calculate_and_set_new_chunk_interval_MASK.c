#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_12__ {scalar_t__ interval_length; int /*<<< orphan*/  id; } ;
struct TYPE_16__ {TYPE_2__ fd; } ;
struct TYPE_15__ {int num_dimensions; TYPE_6__* dimensions; } ;
struct TYPE_11__ {scalar_t__ chunk_target_size; } ;
struct TYPE_14__ {TYPE_1__ fd; int /*<<< orphan*/  chunk_sizing_func; int /*<<< orphan*/  main_table_relid; TYPE_5__* space; } ;
struct TYPE_13__ {scalar_t__* coordinates; } ;
typedef  TYPE_3__ Point ;
typedef  TYPE_4__ Hypertable ;
typedef  TYPE_5__ Hyperspace ;
typedef  TYPE_6__ Dimension ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC9(Hypertable *ht, Point *p)
{
	Hyperspace *hs = ht->space;
	Dimension *dim = NULL;
	Datum datum;
	int64 chunk_interval, coord;
	int i;

	if (!FUNC5(ht->chunk_sizing_func) || ht->fd.chunk_target_size <= 0)
		return false;

	/* Find first open dimension */
	for (i = 0; i < hs->num_dimensions; i++)
	{
		dim = &hs->dimensions[i];

		if (FUNC1(dim))
			break;

		dim = NULL;
	}

	/* Nothing to do if no open dimension */
	if (NULL == dim)
	{
		FUNC6(WARNING,
			 "adaptive chunking enabled on hypertable \"%s\" without an open (time) dimension",
			 FUNC7(ht->main_table_relid));

		return false;
	}

	coord = p->coordinates[i];
	datum = FUNC4(ht->chunk_sizing_func,
							 FUNC2(dim->fd.id),
							 FUNC3(coord),
							 FUNC3(ht->fd.chunk_target_size));
	chunk_interval = FUNC0(datum);

	/* Check if the function didn't set and interval or nothing changed */
	if (chunk_interval <= 0 || chunk_interval == dim->fd.interval_length)
		return false;

	/* Update the dimension */
	FUNC8(dim, chunk_interval);

	return true;
}