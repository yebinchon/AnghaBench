#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_18__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  tx_txg; } ;
typedef  TYPE_5__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;
struct TYPE_31__ {int /*<<< orphan*/  db_size; } ;
typedef  TYPE_6__ dmu_buf_t ;
struct TYPE_32__ {int /*<<< orphan*/  db_level; TYPE_1__* db_objset; } ;
typedef  TYPE_7__ dmu_buf_impl_t ;
struct TYPE_29__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_28__ {TYPE_4__ member_0; } ;
struct TYPE_27__ {TYPE_3__ member_0; } ;
struct TYPE_33__ {TYPE_2__ member_0; } ;
typedef  TYPE_8__ blkptr_t ;
struct TYPE_26__ {int /*<<< orphan*/  os_dsl_dataset; } ;
struct TYPE_25__ {int /*<<< orphan*/  dn_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_18__* FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  SPA_FEATURE_REDACTED_DATASETS ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,TYPE_8__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(dmu_buf_t *dbuf, dmu_tx_t *tx)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)dbuf;
	dmu_object_type_t type;
	FUNC0(FUNC12(db->db_objset->os_dsl_dataset,
	    SPA_FEATURE_REDACTED_DATASETS));

	FUNC8(db);
	type = FUNC7(db)->dn_type;
	FUNC9(db);

	FUNC1(db->db_level);
	FUNC11(dbuf, tx);

	blkptr_t bp = { { { {0} } } };
	FUNC6(&bp, type);
	FUNC4(&bp, 0);
	FUNC3(&bp, tx->tx_txg, 0);
	FUNC5(&bp);
	FUNC2(&bp, dbuf->db_size);

	FUNC10(db, &bp, tx);
}