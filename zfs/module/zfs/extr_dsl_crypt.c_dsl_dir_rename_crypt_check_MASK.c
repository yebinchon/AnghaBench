#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ dd_crypto_obj; scalar_t__ dd_object; } ;
typedef  TYPE_1__ dsl_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,scalar_t__*) ; 

int
FUNC2(dsl_dir_t *dd, dsl_dir_t *newparent)
{
	int ret;
	uint64_t curr_rddobj, parent_rddobj;

	if (dd->dd_crypto_obj == 0)
		return (0);

	ret = FUNC1(dd, &curr_rddobj);
	if (ret != 0)
		goto error;

	/*
	 * if this is not an encryption root, we must make sure we are not
	 * moving dd to a new encryption root
	 */
	if (dd->dd_object != curr_rddobj) {
		ret = FUNC1(newparent,
		    &parent_rddobj);
		if (ret != 0)
			goto error;

		if (parent_rddobj != curr_rddobj) {
			ret = FUNC0(EACCES);
			goto error;
		}
	}

	return (0);

error:
	return (ret);
}