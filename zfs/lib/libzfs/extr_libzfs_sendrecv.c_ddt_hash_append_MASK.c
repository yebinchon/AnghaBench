#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_6__ {scalar_t__ cur_ddt_size; scalar_t__ max_ddt_size; scalar_t__ ddt_full; int /*<<< orphan*/  ddt_count; int /*<<< orphan*/  ddecache; } ;
typedef  TYPE_1__ dedup_table_t ;
struct TYPE_7__ {int /*<<< orphan*/  dde_ref; int /*<<< orphan*/  dde_prop; int /*<<< orphan*/  dde_chksum; int /*<<< orphan*/ * dde_next; } ;
typedef  TYPE_2__ dedup_entry_t ;
typedef  int /*<<< orphan*/  dataref_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  UMEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(libzfs_handle_t *hdl, dedup_table_t *ddt, dedup_entry_t **ddepp,
    zio_cksum_t *cs, uint64_t prop, dataref_t *dr)
{
	dedup_entry_t	*dde;

	if (ddt->cur_ddt_size >= ddt->max_ddt_size) {
		if (ddt->ddt_full == B_FALSE) {
			FUNC3(hdl, FUNC1(TEXT_DOMAIN,
			    "Dedup table full.  Deduplication will continue "
			    "with existing table entries"));
			ddt->ddt_full = B_TRUE;
		}
		return;
	}

	if ((dde = FUNC2(ddt->ddecache, UMEM_DEFAULT))
	    != NULL) {
		FUNC0(*ddepp == NULL);
		dde->dde_next = NULL;
		dde->dde_chksum = *cs;
		dde->dde_prop = prop;
		dde->dde_ref = *dr;
		*ddepp = dde;
		ddt->cur_ddt_size += sizeof (dedup_entry_t);
		ddt->ddt_count++;
	}
}