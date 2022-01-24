#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_8__* ks_data; } ;
typedef  TYPE_7__ kstat_t ;
struct TYPE_14__ {int /*<<< orphan*/  i64; } ;
struct TYPE_15__ {TYPE_5__ value; } ;
struct TYPE_12__ {int /*<<< orphan*/  ui64; } ;
struct TYPE_13__ {TYPE_3__ value; } ;
struct TYPE_10__ {int /*<<< orphan*/  ui64; } ;
struct TYPE_11__ {TYPE_1__ value; } ;
struct TYPE_17__ {TYPE_6__ arcstat_memory_available_bytes; TYPE_4__ arcstat_memory_free_bytes; TYPE_2__ arcstat_memory_all_bytes; int /*<<< orphan*/  arcstat_mfu_ghost_evictable_metadata; int /*<<< orphan*/  arcstat_mfu_ghost_evictable_data; int /*<<< orphan*/  arcstat_mfu_ghost_size; int /*<<< orphan*/  arcstat_mfu_evictable_metadata; int /*<<< orphan*/  arcstat_mfu_evictable_data; int /*<<< orphan*/  arcstat_mfu_size; int /*<<< orphan*/  arcstat_mru_ghost_evictable_metadata; int /*<<< orphan*/  arcstat_mru_ghost_evictable_data; int /*<<< orphan*/  arcstat_mru_ghost_size; int /*<<< orphan*/  arcstat_mru_evictable_metadata; int /*<<< orphan*/  arcstat_mru_evictable_data; int /*<<< orphan*/  arcstat_mru_size; int /*<<< orphan*/  arcstat_anon_evictable_metadata; int /*<<< orphan*/  arcstat_anon_evictable_data; int /*<<< orphan*/  arcstat_anon_size; } ;
typedef  TYPE_8__ arc_stats_t ;
typedef  int /*<<< orphan*/  ARCSTAT ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int KSTAT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  arc_anon ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  arc_meta_used ; 
 int /*<<< orphan*/  arc_mfu ; 
 int /*<<< orphan*/  arc_mfu_ghost ; 
 int /*<<< orphan*/  arc_mru ; 
 int /*<<< orphan*/  arc_mru_ghost ; 
 int /*<<< orphan*/  arc_size ; 
 int /*<<< orphan*/  astat_bonus_size ; 
 int /*<<< orphan*/  astat_data_size ; 
 int /*<<< orphan*/  astat_dbuf_size ; 
 int /*<<< orphan*/  astat_dnode_size ; 
 int /*<<< orphan*/  astat_hdr_size ; 
 int /*<<< orphan*/  astat_l2_hdr_size ; 
 int /*<<< orphan*/  astat_metadata_size ; 

__attribute__((used)) static int
FUNC6(kstat_t *ksp, int rw)
{
	arc_stats_t *as = ksp->ks_data;

	if (rw == KSTAT_WRITE) {
		return (FUNC0(EACCES));
	} else {
		FUNC5(arc_anon,
		    &as->arcstat_anon_size,
		    &as->arcstat_anon_evictable_data,
		    &as->arcstat_anon_evictable_metadata);
		FUNC5(arc_mru,
		    &as->arcstat_mru_size,
		    &as->arcstat_mru_evictable_data,
		    &as->arcstat_mru_evictable_metadata);
		FUNC5(arc_mru_ghost,
		    &as->arcstat_mru_ghost_size,
		    &as->arcstat_mru_ghost_evictable_data,
		    &as->arcstat_mru_ghost_evictable_metadata);
		FUNC5(arc_mfu,
		    &as->arcstat_mfu_size,
		    &as->arcstat_mfu_evictable_data,
		    &as->arcstat_mfu_evictable_metadata);
		FUNC5(arc_mfu_ghost,
		    &as->arcstat_mfu_ghost_size,
		    &as->arcstat_mfu_ghost_evictable_data,
		    &as->arcstat_mfu_ghost_evictable_metadata);

		ARCSTAT(arcstat_size) = FUNC1(&arc_size);
		ARCSTAT(arcstat_meta_used) = FUNC1(&arc_meta_used);
		ARCSTAT(arcstat_data_size) = FUNC1(&astat_data_size);
		ARCSTAT(arcstat_metadata_size) =
		    FUNC1(&astat_metadata_size);
		ARCSTAT(arcstat_hdr_size) = FUNC1(&astat_hdr_size);
		ARCSTAT(arcstat_l2_hdr_size) = FUNC1(&astat_l2_hdr_size);
		ARCSTAT(arcstat_dbuf_size) = FUNC1(&astat_dbuf_size);
		ARCSTAT(arcstat_dnode_size) = FUNC1(&astat_dnode_size);
		ARCSTAT(arcstat_bonus_size) = FUNC1(&astat_bonus_size);

		as->arcstat_memory_all_bytes.value.ui64 =
		    FUNC2();
		as->arcstat_memory_free_bytes.value.ui64 =
		    FUNC4();
		as->arcstat_memory_available_bytes.value.i64 =
		    FUNC3();
	}

	return (0);
}