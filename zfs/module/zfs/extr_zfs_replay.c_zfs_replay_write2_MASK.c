#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ z_size; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_10__ {int /*<<< orphan*/  z_log; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ lr_offset; scalar_t__ lr_length; int /*<<< orphan*/  lr_foid; } ;
typedef  TYPE_3__ lr_write_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(void *arg1, void *arg2, boolean_t byteswap)
{
	zfsvfs_t *zfsvfs = arg1;
	lr_write_t *lr = arg2;
	znode_t	*zp;
	int error;
	uint64_t end;

	if (byteswap)
		FUNC2(lr, sizeof (*lr));

	if ((error = FUNC11(zfsvfs, lr->lr_foid, &zp)) != 0)
		return (error);

top:
	end = lr->lr_offset + lr->lr_length;
	if (end > zp->z_size) {
		dmu_tx_t *tx = FUNC6(zfsvfs->z_os);

		zp->z_size = end;
		FUNC7(tx, zp->z_sa_hdl, B_FALSE);
		error = FUNC4(tx, TXG_WAIT);
		if (error) {
			FUNC9(FUNC1(zp));
			if (error == ERESTART) {
				FUNC8(tx);
				FUNC3(tx);
				goto top;
			}
			FUNC3(tx);
			return (error);
		}
		(void) FUNC10(zp->z_sa_hdl, FUNC0(zfsvfs),
		    (void *)&zp->z_size, sizeof (uint64_t), tx);

		/* Ensure the replayed seq is updated */
		(void) FUNC12(zfsvfs->z_log, tx);

		FUNC5(tx);
	}

	FUNC9(FUNC1(zp));

	return (error);
}