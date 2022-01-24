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
struct TYPE_6__ {int /*<<< orphan*/  zn_hash; int /*<<< orphan*/  zn_zap; } ;
typedef  TYPE_1__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
struct TYPE_7__ {int /*<<< orphan*/  zeh_num_integers; int /*<<< orphan*/  zeh_integer_size; } ;
typedef  TYPE_2__ zap_entry_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(zap_name_t *zn,
    uint64_t *integer_size, uint64_t *num_integers)
{
	zap_leaf_t *l;
	int err;
	zap_entry_handle_t zeh;

	err = FUNC0(zn->zn_zap, zn->zn_hash, NULL, RW_READER, &l);
	if (err != 0)
		return (err);
	err = FUNC1(l, zn, &zeh);
	if (err != 0)
		goto out;

	if (integer_size != 0)
		*integer_size = zeh.zeh_integer_size;
	if (num_integers != 0)
		*num_integers = zeh.zeh_num_integers;
out:
	FUNC2(l);
	return (err);
}