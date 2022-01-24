#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_1__ zap_t ;
struct TYPE_16__ {TYPE_1__* zn_zap; } ;
typedef  TYPE_2__ zap_name_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  mzap_ent_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {int mze_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ MZAP_NAME_LEN ; 
 TYPE_12__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,char const*) ; 
 int FUNC4 (TYPE_2__*,int,int,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int const) ; 
 int FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 TYPE_2__* FUNC10 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC13(objset_t *os, uint64_t zapobj, const char *name,
    int integer_size, uint64_t num_integers, const void *val, dmu_tx_t *tx)
{
	zap_t *zap;
	const uint64_t *intval = val;

	int err =
	    FUNC9(os, zapobj, tx, RW_WRITER, TRUE, TRUE, FTAG, &zap);
	if (err != 0)
		return (err);
	zap_name_t *zn = FUNC10(zap, name, 0);
	if (zn == NULL) {
		FUNC12(zap, FTAG);
		return (FUNC2(ENOTSUP));
	}
	if (!zap->zap_ismicro) {
		err = FUNC4(zn, integer_size, num_integers, val,
		    FTAG, tx);
		zap = zn->zn_zap;	/* fzap_update() may change zap */
	} else if (integer_size != 8 || num_integers != 1 ||
	    FUNC8(name) >= MZAP_NAME_LEN) {
		FUNC3("upgrading obj %llu: intsz=%u numint=%llu name=%s\n",
		    zapobj, integer_size, num_integers, name);
		err = FUNC6(&zn->zn_zap, FTAG, tx, 0);
		if (err == 0) {
			err = FUNC4(zn, integer_size, num_integers,
			    val, FTAG, tx);
		}
		zap = zn->zn_zap;	/* fzap_update() may change zap */
	} else {
		mzap_ent_t *mze = FUNC7(zn);
		if (mze != NULL) {
			FUNC1(zap, mze)->mze_value = *intval;
		} else {
			FUNC5(zn, *intval);
		}
	}
	FUNC0(zap == zn->zn_zap);
	FUNC11(zn);
	if (zap != NULL)	/* may be NULL if fzap_upgrade() failed */
		FUNC12(zap, FTAG);
	return (err);
}