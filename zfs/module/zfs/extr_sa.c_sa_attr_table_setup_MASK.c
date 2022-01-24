#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_16__ {int za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int uint64_t ;
struct TYPE_17__ {size_t* sa_user_table; int sa_user_table_sz; scalar_t__ sa_reg_attr_obj; int sa_num_attrs; int sa_need_attr_registration; TYPE_3__* sa_attr_table; } ;
typedef  TYPE_2__ sa_os_t ;
typedef  size_t sa_attr_type_t ;
struct TYPE_18__ {size_t sa_attr; void* sa_name; int /*<<< orphan*/  sa_byteswap; int /*<<< orphan*/  sa_length; void* sa_registered; } ;
typedef  TYPE_3__ sa_attr_table_t ;
struct TYPE_19__ {int /*<<< orphan*/  sa_name; int /*<<< orphan*/  sa_byteswap; int /*<<< orphan*/  sa_length; } ;
typedef  TYPE_4__ sa_attr_reg_t ;
struct TYPE_20__ {TYPE_2__* os_sa; } ;
typedef  TYPE_5__ objset_t ;
typedef  scalar_t__ dmu_objset_type_t ;
typedef  void* boolean_t ;
struct TYPE_15__ {size_t sa_attr; int /*<<< orphan*/  sa_name; int /*<<< orphan*/  sa_byteswap; int /*<<< orphan*/  sa_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ DMU_OST_ZFS ; 
 int EINVAL ; 
#define  ENOENT 128 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,int) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int sa_legacy_attr_count ; 
 TYPE_10__* sa_legacy_attrs ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_5__*,scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC17 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static int
FUNC18(objset_t *os, sa_attr_reg_t *reg_attrs, int count)
{
	sa_os_t *sa = os->os_sa;
	uint64_t sa_attr_count = 0;
	uint64_t sa_reg_count = 0;
	int error = 0;
	uint64_t attr_value;
	sa_attr_table_t *tb;
	zap_cursor_t zc;
	zap_attribute_t za;
	int registered_count = 0;
	int i;
	dmu_objset_type_t ostype = FUNC5(os);

	sa->sa_user_table =
	    FUNC7(count * sizeof (sa_attr_type_t), KM_SLEEP);
	sa->sa_user_table_sz = count * sizeof (sa_attr_type_t);

	if (sa->sa_reg_attr_obj != 0) {
		error = FUNC12(os, sa->sa_reg_attr_obj,
		    &sa_attr_count);

		/*
		 * Make sure we retrieved a count and that it isn't zero
		 */
		if (error || (error == 0 && sa_attr_count == 0)) {
			if (error == 0)
				error = FUNC4(EINVAL);
			goto bail;
		}
		sa_reg_count = sa_attr_count;
	}

	if (ostype == DMU_OST_ZFS && sa_attr_count == 0)
		sa_attr_count += sa_legacy_attr_count;

	/* Allocate attribute numbers for attributes that aren't registered */
	for (i = 0; i != count; i++) {
		boolean_t found = B_FALSE;
		int j;

		if (ostype == DMU_OST_ZFS) {
			for (j = 0; j != sa_legacy_attr_count; j++) {
				if (FUNC9(reg_attrs[i].sa_name,
				    sa_legacy_attrs[j].sa_name) == 0) {
					sa->sa_user_table[i] =
					    sa_legacy_attrs[j].sa_attr;
					found = B_TRUE;
				}
			}
		}
		if (found)
			continue;

		if (sa->sa_reg_attr_obj)
			error = FUNC17(os, sa->sa_reg_attr_obj,
			    reg_attrs[i].sa_name, 8, 1, &attr_value);
		else
			error = FUNC4(ENOENT);
		switch (error) {
		case ENOENT:
			sa->sa_user_table[i] = (sa_attr_type_t)sa_attr_count;
			sa_attr_count++;
			break;
		case 0:
			sa->sa_user_table[i] = FUNC3(attr_value);
			break;
		default:
			goto bail;
		}
	}

	sa->sa_num_attrs = sa_attr_count;
	tb = sa->sa_attr_table =
	    FUNC7(sizeof (sa_attr_table_t) * sa_attr_count, KM_SLEEP);

	/*
	 * Attribute table is constructed from requested attribute list,
	 * previously foreign registered attributes, and also the legacy
	 * ZPL set of attributes.
	 */

	if (sa->sa_reg_attr_obj) {
		for (FUNC15(&zc, os, sa->sa_reg_attr_obj);
		    (error = FUNC16(&zc, &za)) == 0;
		    FUNC13(&zc)) {
			uint64_t value;
			value  = za.za_first_integer;

			registered_count++;
			tb[FUNC3(value)].sa_attr = FUNC3(value);
			tb[FUNC3(value)].sa_length = FUNC2(value);
			tb[FUNC3(value)].sa_byteswap = FUNC1(value);
			tb[FUNC3(value)].sa_registered = B_TRUE;

			if (tb[FUNC3(value)].sa_name) {
				continue;
			}
			tb[FUNC3(value)].sa_name =
			    FUNC7(FUNC11(za.za_name) +1, KM_SLEEP);
			(void) FUNC10(tb[FUNC3(value)].sa_name, za.za_name,
			    FUNC11(za.za_name) +1);
		}
		FUNC14(&zc);
		/*
		 * Make sure we processed the correct number of registered
		 * attributes
		 */
		if (registered_count != sa_reg_count) {
			FUNC0(error != 0);
			goto bail;
		}

	}

	if (ostype == DMU_OST_ZFS) {
		for (i = 0; i != sa_legacy_attr_count; i++) {
			if (tb[i].sa_name)
				continue;
			tb[i].sa_attr = sa_legacy_attrs[i].sa_attr;
			tb[i].sa_length = sa_legacy_attrs[i].sa_length;
			tb[i].sa_byteswap = sa_legacy_attrs[i].sa_byteswap;
			tb[i].sa_registered = B_FALSE;
			tb[i].sa_name =
			    FUNC7(FUNC11(sa_legacy_attrs[i].sa_name) +1,
			    KM_SLEEP);
			(void) FUNC10(tb[i].sa_name,
			    sa_legacy_attrs[i].sa_name,
			    FUNC11(sa_legacy_attrs[i].sa_name) + 1);
		}
	}

	for (i = 0; i != count; i++) {
		sa_attr_type_t attr_id;

		attr_id = sa->sa_user_table[i];
		if (tb[attr_id].sa_name)
			continue;

		tb[attr_id].sa_length = reg_attrs[i].sa_length;
		tb[attr_id].sa_byteswap = reg_attrs[i].sa_byteswap;
		tb[attr_id].sa_attr = attr_id;
		tb[attr_id].sa_name =
		    FUNC7(FUNC11(reg_attrs[i].sa_name) + 1, KM_SLEEP);
		(void) FUNC10(tb[attr_id].sa_name, reg_attrs[i].sa_name,
		    FUNC11(reg_attrs[i].sa_name) + 1);
	}

	sa->sa_need_attr_registration =
	    (sa_attr_count != registered_count);

	return (0);
bail:
	FUNC6(sa->sa_user_table, count * sizeof (sa_attr_type_t));
	sa->sa_user_table = NULL;
	FUNC8(sa);
	FUNC0(error != 0);
	return (error);
}