#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int nvs_op; } ;
typedef  TYPE_1__ nvstream_t ;
struct TYPE_17__ {scalar_t__ nvp_size; int /*<<< orphan*/  nvp_name_sz; } ;
typedef  TYPE_2__ nvpair_t ;
typedef  int data_type_t ;

/* Variables and functions */
#define  DATA_TYPE_NVLIST 132 
#define  DATA_TYPE_NVLIST_ARRAY 131 
#define  DATA_TYPE_STRING_ARRAY 130 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_2__*) ; 
#define  NVS_OP_DECODE 129 
#define  NVS_OP_ENCODE 128 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC9(nvstream_t *nvs, nvpair_t *nvp)
{
	data_type_t type;
	int value_sz;
	int ret = 0;

	/*
	 * We do the initial bcopy of the data before we look at
	 * the nvpair type, because when we're decoding, we won't
	 * have the correct values for the pair until we do the bcopy.
	 */
	switch (nvs->nvs_op) {
	case NVS_OP_ENCODE:
	case NVS_OP_DECODE:
		if (FUNC5(nvs, nvp, nvp->nvp_size) != 0)
			return (EFAULT);
		break;
	default:
		return (EINVAL);
	}

	/* verify nvp_name_sz, check the name string length */
	if (FUNC4(nvp) != 0)
		return (EFAULT);

	type = FUNC2(nvp);

	/*
	 * Verify type and nelem and get the value size.
	 * In case of data types DATA_TYPE_STRING and DATA_TYPE_STRING_ARRAY
	 * is the size of the string(s) excluded.
	 */
	if ((value_sz = FUNC3(type, NULL, FUNC0(nvp))) < 0)
		return (EFAULT);

	if (FUNC1(nvp->nvp_name_sz, value_sz) > nvp->nvp_size)
		return (EFAULT);

	switch (type) {
	case DATA_TYPE_NVLIST:
		ret = FUNC6(nvs, nvp);
		break;
	case DATA_TYPE_NVLIST_ARRAY:
		ret = FUNC7(nvs, nvp);
		break;
	case DATA_TYPE_STRING_ARRAY:
		FUNC8(nvs, nvp);
		break;
	default:
		break;
	}

	return (ret);
}