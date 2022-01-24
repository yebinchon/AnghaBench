#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
struct TYPE_11__ {int /*<<< orphan*/ * arcs_list; int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
struct TYPE_10__ {int /*<<< orphan*/ * arcs_list; int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
struct TYPE_9__ {int /*<<< orphan*/ * arcs_list; int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
struct TYPE_8__ {int /*<<< orphan*/ * arcs_list; int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
struct TYPE_7__ {int /*<<< orphan*/ * arcs_list; int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;

/* Variables and functions */
 size_t ARC_BUFC_DATA ; 
 size_t ARC_BUFC_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_6__* arc_anon ; 
 TYPE_5__* arc_l2c_only ; 
 int /*<<< orphan*/  arc_meta_used ; 
 TYPE_4__* arc_mfu ; 
 TYPE_3__* arc_mfu_ghost ; 
 TYPE_2__* arc_mru ; 
 TYPE_1__* arc_mru_ghost ; 
 int /*<<< orphan*/  arc_size ; 
 int /*<<< orphan*/  astat_bonus_size ; 
 int /*<<< orphan*/  astat_data_size ; 
 int /*<<< orphan*/  astat_dbuf_size ; 
 int /*<<< orphan*/  astat_dnode_size ; 
 int /*<<< orphan*/  astat_hdr_size ; 
 int /*<<< orphan*/  astat_l2_hdr_size ; 
 int /*<<< orphan*/  astat_metadata_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC2(&arc_anon->arcs_esize[ARC_BUFC_METADATA]);
	FUNC2(&arc_anon->arcs_esize[ARC_BUFC_DATA]);
	FUNC2(&arc_mru->arcs_esize[ARC_BUFC_METADATA]);
	FUNC2(&arc_mru->arcs_esize[ARC_BUFC_DATA]);
	FUNC2(&arc_mru_ghost->arcs_esize[ARC_BUFC_METADATA]);
	FUNC2(&arc_mru_ghost->arcs_esize[ARC_BUFC_DATA]);
	FUNC2(&arc_mfu->arcs_esize[ARC_BUFC_METADATA]);
	FUNC2(&arc_mfu->arcs_esize[ARC_BUFC_DATA]);
	FUNC2(&arc_mfu_ghost->arcs_esize[ARC_BUFC_METADATA]);
	FUNC2(&arc_mfu_ghost->arcs_esize[ARC_BUFC_DATA]);
	FUNC2(&arc_l2c_only->arcs_esize[ARC_BUFC_METADATA]);
	FUNC2(&arc_l2c_only->arcs_esize[ARC_BUFC_DATA]);

	FUNC2(&arc_anon->arcs_size);
	FUNC2(&arc_mru->arcs_size);
	FUNC2(&arc_mru_ghost->arcs_size);
	FUNC2(&arc_mfu->arcs_size);
	FUNC2(&arc_mfu_ghost->arcs_size);
	FUNC2(&arc_l2c_only->arcs_size);

	FUNC1(arc_mru->arcs_list[ARC_BUFC_METADATA]);
	FUNC1(arc_mru_ghost->arcs_list[ARC_BUFC_METADATA]);
	FUNC1(arc_mfu->arcs_list[ARC_BUFC_METADATA]);
	FUNC1(arc_mfu_ghost->arcs_list[ARC_BUFC_METADATA]);
	FUNC1(arc_mru->arcs_list[ARC_BUFC_DATA]);
	FUNC1(arc_mru_ghost->arcs_list[ARC_BUFC_DATA]);
	FUNC1(arc_mfu->arcs_list[ARC_BUFC_DATA]);
	FUNC1(arc_mfu_ghost->arcs_list[ARC_BUFC_DATA]);
	FUNC1(arc_l2c_only->arcs_list[ARC_BUFC_METADATA]);
	FUNC1(arc_l2c_only->arcs_list[ARC_BUFC_DATA]);

	FUNC0(&arc_meta_used);
	FUNC0(&arc_size);
	FUNC0(&astat_data_size);
	FUNC0(&astat_metadata_size);
	FUNC0(&astat_hdr_size);
	FUNC0(&astat_l2_hdr_size);
	FUNC0(&astat_bonus_size);
	FUNC0(&astat_dnode_size);
	FUNC0(&astat_dbuf_size);
}