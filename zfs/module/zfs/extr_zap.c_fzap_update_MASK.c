#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_1__ zap_t ;
struct TYPE_12__ {TYPE_1__* zn_zap; int /*<<< orphan*/  zn_hash; } ;
typedef  TYPE_2__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  int /*<<< orphan*/  zap_entry_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  ZAP_NEED_CD ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void const*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 

int
FUNC10(zap_name_t *zn,
    int integer_size, uint64_t num_integers, const void *val,
    void *tag, dmu_tx_t *tx)
{
	zap_leaf_t *l;
	int err;
	boolean_t create;
	zap_entry_handle_t zeh;
	zap_t *zap = zn->zn_zap;

	FUNC0(FUNC1(&zap->zap_rwlock));
	err = FUNC2(zn, integer_size, num_integers);
	if (err != 0)
		return (err);

	err = FUNC3(zap, zn->zn_hash, tx, RW_WRITER, &l);
	if (err != 0)
		return (err);
retry:
	err = FUNC8(l, zn, &zeh);
	create = (err == ENOENT);
	FUNC0(err == 0 || err == ENOENT);

	if (create) {
		err = FUNC4(l, zn, ZAP_NEED_CD,
		    integer_size, num_integers, val, &zeh);
		if (err == 0)
			FUNC7(zap, 1, tx);
	} else {
		err = FUNC5(&zeh, integer_size, num_integers, val);
	}

	if (err == EAGAIN) {
		err = FUNC6(zn, l, tag, tx, &l);
		zap = zn->zn_zap;	/* zap_expand_leaf() may change zap */
		if (err == 0)
			goto retry;
	}

	if (zap != NULL)
		FUNC9(zn, l, tag, tx);
	return (err);
}