#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {TYPE_6__* tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_8__ {int /*<<< orphan*/  compressed_chunk_id; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FormData_chunk ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC7(TupleInfo *ti, void *data)
{
	FormData_chunk form;
	HeapTuple new_tuple;
	CatalogSecurityContext sec_ctx;
	int32 compressed_chunk_id = *((int32 *) data);

	FUNC0(&form, ti->tuple, ti->desc);
	form.compressed_chunk_id = compressed_chunk_id;
	new_tuple = FUNC1(&form, ti->desc);

	FUNC3(FUNC4(), &sec_ctx);
	FUNC6(ti->scanrel, &ti->tuple->t_self, new_tuple);
	FUNC5(&sec_ctx);
	FUNC2(new_tuple);

	return SCAN_DONE;
}