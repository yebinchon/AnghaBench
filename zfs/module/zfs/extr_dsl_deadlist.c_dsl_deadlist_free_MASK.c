#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_6__ {scalar_t__ za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {scalar_t__ doi_type; } ;
typedef  TYPE_2__ dmu_object_info_t ;
struct TYPE_8__ {scalar_t__ dp_empty_bpobj; } ;

/* Variables and functions */
 scalar_t__ DMU_OT_BPOBJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC10(objset_t *os, uint64_t dlobj, dmu_tx_t *tx)
{
	dmu_object_info_t doi;
	zap_cursor_t zc;
	zap_attribute_t za;

	FUNC0(FUNC4(os, dlobj, &doi));
	if (doi.doi_type == DMU_OT_BPOBJ) {
		FUNC2(os, dlobj, tx);
		return;
	}

	for (FUNC8(&zc, os, dlobj);
	    FUNC9(&zc, &za) == 0;
	    FUNC6(&zc)) {
		uint64_t obj = za.za_first_integer;
		if (obj == FUNC5(os)->dp_empty_bpobj)
			FUNC1(os, tx);
		else
			FUNC2(os, obj, tx);
	}
	FUNC7(&zc);
	FUNC0(FUNC3(os, dlobj, tx));
}