#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_20__ {int /*<<< orphan*/  z_unlinkedobj; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_21__ {int /*<<< orphan*/ * dl_name; TYPE_1__* dl_dzp; } ;
typedef  TYPE_3__ zfs_dirlock_t ;
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_22__ {int /*<<< orphan*/ * za_name; int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_4__ zap_attribute_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dl ;
struct TYPE_18__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int ENOENT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*) ; 
 int FUNC19 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC22(znode_t *dzp)
{
	zap_cursor_t	zc;
	zap_attribute_t	zap;
	znode_t		*xzp;
	dmu_tx_t	*tx;
	zfsvfs_t	*zfsvfs = FUNC5(dzp);
	zfs_dirlock_t	dl;
	int skipped = 0;
	int error;

	for (FUNC16(&zc, zfsvfs->z_os, dzp->z_id);
	    (error = FUNC17(&zc, &zap)) == 0;
	    FUNC14(&zc)) {
		error = FUNC21(zfsvfs,
		    FUNC3(zap.za_first_integer), &xzp);
		if (error) {
			skipped += 1;
			continue;
		}

		FUNC0(FUNC2(FUNC4(xzp)->i_mode) ||
		    FUNC1(FUNC4(xzp)->i_mode));

		tx = FUNC10(zfsvfs->z_os);
		FUNC11(tx, dzp->z_sa_hdl, B_FALSE);
		FUNC12(tx, dzp->z_id, FALSE, zap.za_name);
		FUNC11(tx, xzp->z_sa_hdl, B_FALSE);
		FUNC12(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);
		/* Is this really needed ? */
		FUNC20(tx, xzp);
		FUNC13(tx);
		error = FUNC8(tx, TXG_WAIT);
		if (error) {
			FUNC7(tx);
			FUNC18(FUNC4(xzp));
			skipped += 1;
			continue;
		}
		FUNC6(&dl, sizeof (dl));
		dl.dl_dzp = dzp;
		dl.dl_name = zap.za_name;

		error = FUNC19(&dl, xzp, tx, 0, NULL);
		if (error)
			skipped += 1;
		FUNC9(tx);

		FUNC18(FUNC4(xzp));
	}
	FUNC15(&zc);
	if (error != ENOENT)
		skipped += 1;
	return (skipped);
}