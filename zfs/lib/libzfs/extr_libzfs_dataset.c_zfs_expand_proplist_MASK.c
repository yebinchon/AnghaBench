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
struct TYPE_11__ {scalar_t__ pl_prop; scalar_t__ pl_width; scalar_t__ pl_recvd_width; int /*<<< orphan*/ * pl_user_prop; scalar_t__ pl_fixed; struct TYPE_11__* pl_next; scalar_t__ pl_all; } ;
typedef  TYPE_1__ zprop_list_t ;
struct TYPE_12__ {int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,char*,int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ) ; 

int
FUNC15(zfs_handle_t *zhp, zprop_list_t **plp, boolean_t received,
    boolean_t literal)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	zprop_list_t *entry;
	zprop_list_t **last, **start;
	nvlist_t *userprops, *propval;
	nvpair_t *elem;
	char *strval;
	char buf[ZFS_MAXPROPLEN];

	if (FUNC14(hdl, plp, ZFS_TYPE_DATASET) != 0)
		return (-1);

	userprops = FUNC9(zhp);

	entry = *plp;
	if (entry->pl_all && FUNC3(userprops, NULL) != NULL) {
		/*
		 * Go through and add any user properties as necessary.  We
		 * start by incrementing our list pointer to the first
		 * non-native property.
		 */
		start = plp;
		while (*start != NULL) {
			if ((*start)->pl_prop == ZPROP_INVAL)
				break;
			start = &(*start)->pl_next;
		}

		elem = NULL;
		while ((elem = FUNC3(userprops, elem)) != NULL) {
			/*
			 * See if we've already found this property in our list.
			 */
			for (last = start; *last != NULL;
			    last = &(*last)->pl_next) {
				if (FUNC5((*last)->pl_user_prop,
				    FUNC4(elem)) == 0)
					break;
			}

			if (*last == NULL) {
				if ((entry = FUNC8(hdl,
				    sizeof (zprop_list_t))) == NULL ||
				    ((entry->pl_user_prop = FUNC13(hdl,
				    FUNC4(elem)))) == NULL) {
					FUNC0(entry);
					return (-1);
				}

				entry->pl_prop = ZPROP_INVAL;
				entry->pl_width = FUNC6(FUNC4(elem));
				entry->pl_all = B_TRUE;
				*last = entry;
			}
		}
	}

	/*
	 * Now go through and check the width of any non-fixed columns
	 */
	for (entry = *plp; entry != NULL; entry = entry->pl_next) {
		if (entry->pl_fixed && !literal)
			continue;

		if (entry->pl_prop != ZPROP_INVAL) {
			if (FUNC10(zhp, entry->pl_prop,
			    buf, sizeof (buf), NULL, NULL, 0, literal) == 0) {
				if (FUNC6(buf) > entry->pl_width)
					entry->pl_width = FUNC6(buf);
			}
			if (received && FUNC11(zhp,
			    FUNC12(entry->pl_prop),
			    buf, sizeof (buf), literal) == 0)
				if (FUNC6(buf) > entry->pl_recvd_width)
					entry->pl_recvd_width = FUNC6(buf);
		} else {
			if (FUNC1(userprops, entry->pl_user_prop,
			    &propval) == 0) {
				FUNC7(FUNC2(propval,
				    ZPROP_VALUE, &strval) == 0);
				if (FUNC6(strval) > entry->pl_width)
					entry->pl_width = FUNC6(strval);
			}
			if (received && FUNC11(zhp,
			    entry->pl_user_prop,
			    buf, sizeof (buf), literal) == 0)
				if (FUNC6(buf) > entry->pl_recvd_width)
					entry->pl_recvd_width = FUNC6(buf);
		}
	}

	return (0);
}