#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_mode; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/ * lr_crtime; int /*<<< orphan*/  lr_gen; int /*<<< orphan*/  lr_mode; int /*<<< orphan*/  lr_gid; int /*<<< orphan*/  lr_uid; int /*<<< orphan*/  lr_foid; int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_2__ lr_create_t ;
struct TYPE_13__ {int /*<<< orphan*/  itx_lr; } ;
typedef  TYPE_3__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC13(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, znode_t *zp, char *name, char *link)
{
	itx_t *itx;
	lr_create_t *lr;
	size_t namesize = FUNC9(name) + 1;
	size_t linksize = FUNC9(link) + 1;

	if (FUNC12(zilog, tx))
		return;

	itx = FUNC11(txtype, sizeof (*lr) + namesize + linksize);
	lr = (lr_create_t *)&itx->itx_lr;
	lr->lr_doid = dzp->z_id;
	lr->lr_foid = zp->z_id;
	lr->lr_uid = FUNC1(FUNC5(zp));
	lr->lr_gid = FUNC0(FUNC4(zp));
	lr->lr_mode = zp->z_mode;
	(void) FUNC8(zp->z_sa_hdl, FUNC3(FUNC6(zp)), &lr->lr_gen,
	    sizeof (uint64_t));
	(void) FUNC8(zp->z_sa_hdl, FUNC2(FUNC6(zp)),
	    lr->lr_crtime, sizeof (uint64_t) * 2);
	FUNC7(name, (char *)(lr + 1), namesize);
	FUNC7(link, (char *)(lr + 1) + namesize, linksize);

	FUNC10(zilog, itx, tx);
}