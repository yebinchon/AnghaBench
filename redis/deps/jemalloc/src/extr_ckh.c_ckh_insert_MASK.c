#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_6__ {int /*<<< orphan*/  ninserts; } ;
typedef  TYPE_1__ ckh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,void const**,void const**) ; 

bool
FUNC4(tsd_t *tsd, ckh_t *ckh, const void *key, const void *data) {
	bool ret;

	FUNC0(ckh != NULL);
	FUNC0(FUNC2(ckh, key, NULL, NULL));

#ifdef CKH_COUNT
	ckh->ninserts++;
#endif

	while (FUNC3(ckh, &key, &data)) {
		if (FUNC1(tsd, ckh)) {
			ret = true;
			goto label_return;
		}
	}

	ret = false;
label_return:
	return ret;
}