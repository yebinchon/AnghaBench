#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_1__ zap_t ;
struct TYPE_14__ {TYPE_1__* zn_zap; int /*<<< orphan*/  zn_hash; } ;
typedef  TYPE_2__ zap_name_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOTSUP ; 
 scalar_t__ MZAP_NAME_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int,void const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int const) ; 
 int FUNC4 (TYPE_1__**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,void*) ; 

__attribute__((used)) static int
FUNC11(zap_t *zap, const char *key,
    int integer_size, uint64_t num_integers,
    const void *val, dmu_tx_t *tx, void *tag)
{
	const uint64_t *intval = val;
	int err = 0;

	zap_name_t *zn = FUNC8(zap, key, 0);
	if (zn == NULL) {
		FUNC10(zap, tag);
		return (FUNC1(ENOTSUP));
	}
	if (!zap->zap_ismicro) {
		err = FUNC2(zn, integer_size, num_integers, val, tag, tx);
		zap = zn->zn_zap;	/* fzap_add() may change zap */
	} else if (integer_size != 8 || num_integers != 1 ||
	    FUNC7(key) >= MZAP_NAME_LEN ||
	    !FUNC5(zn, zn->zn_hash)) {
		err = FUNC4(&zn->zn_zap, tag, tx, 0);
		if (err == 0) {
			err = FUNC2(zn, integer_size, num_integers, val,
			    tag, tx);
		}
		zap = zn->zn_zap;	/* fzap_add() may change zap */
	} else {
		if (FUNC6(zn) != NULL) {
			err = FUNC1(EEXIST);
		} else {
			FUNC3(zn, *intval);
		}
	}
	FUNC0(zap == zn->zn_zap);
	FUNC9(zn);
	if (zap != NULL)	/* may be NULL if fzap_add() failed */
		FUNC10(zap, tag);
	return (err);
}