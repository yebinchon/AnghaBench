#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_14__ {int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
typedef  TYPE_3__ arc_state_t ;
struct TYPE_13__ {int /*<<< orphan*/  b_pabd; int /*<<< orphan*/  b_refcnt; int /*<<< orphan*/  b_arc_node; TYPE_3__* b_state; } ;
struct TYPE_12__ {int /*<<< orphan*/  b_rabd; } ;
struct TYPE_15__ {TYPE_2__ b_l1hdr; TYPE_1__ b_crypt_hdr; } ;
typedef  TYPE_4__ arc_buf_hdr_t ;
typedef  size_t arc_buf_contents_t ;

/* Variables and functions */
 size_t ARC_BUFC_DATA ; 
 size_t ARC_BUFC_METADATA ; 
 int /*<<< orphan*/  ARC_SPACE_DATA ; 
 int /*<<< orphan*/  ARC_SPACE_META ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_3__* arc_anon ; 
 size_t FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_3__* arc_l2c_only ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC9(arc_buf_hdr_t *hdr, boolean_t free_rdata)
{
	arc_state_t *state = hdr->b_l1hdr.b_state;
	arc_buf_contents_t type = FUNC2(hdr);
	uint64_t size = (free_rdata) ? FUNC1(hdr) : FUNC3(hdr);

	/* protected by hash lock, if in the hash table */
	if (FUNC6(&hdr->b_l1hdr.b_arc_node)) {
		FUNC0(FUNC7(&hdr->b_l1hdr.b_refcnt));
		FUNC0(state != arc_anon && state != arc_l2c_only);

		(void) FUNC8(&state->arcs_esize[type],
		    size, hdr);
	}
	(void) FUNC8(&state->arcs_size, size, hdr);
	if (type == ARC_BUFC_METADATA) {
		FUNC4(size, ARC_SPACE_META);
	} else {
		FUNC0(type == ARC_BUFC_DATA);
		FUNC4(size, ARC_SPACE_DATA);
	}

	if (free_rdata) {
		FUNC5(hdr->b_crypt_hdr.b_rabd, size, type);
	} else {
		FUNC5(hdr->b_l1hdr.b_pabd, size, type);
	}
}