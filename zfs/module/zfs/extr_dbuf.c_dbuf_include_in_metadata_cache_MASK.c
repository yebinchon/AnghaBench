#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dmu_object_type_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  dn_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t DB_DBUF_METADATA_CACHE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dbuf_caches ; 
 scalar_t__ dbuf_metadata_cache_max_bytes ; 
 int /*<<< orphan*/  metadata_cache_overflow ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC8(dmu_buf_impl_t *db)
{
	FUNC3(db);
	dmu_object_type_t type = FUNC2(db)->dn_type;
	FUNC4(db);

	/* Check if this dbuf is one of the types we care about */
	if (FUNC6(type)) {
		/* If we hit this, then we set something up wrong in dmu_ot */
		FUNC0(FUNC5(type));

		/*
		 * Sanity check for small-memory systems: don't allocate too
		 * much memory for this purpose.
		 */
		if (FUNC7(
		    &dbuf_caches[DB_DBUF_METADATA_CACHE].size) >
		    dbuf_metadata_cache_max_bytes) {
			FUNC1(metadata_cache_overflow);
			return (B_FALSE);
		}

		return (B_TRUE);
	}

	return (B_FALSE);
}