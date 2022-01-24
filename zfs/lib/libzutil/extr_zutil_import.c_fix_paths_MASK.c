#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {scalar_t__ ne_guid; char* ne_name; scalar_t__ ne_num_labels; scalar_t__ ne_order; struct TYPE_3__* ne_next; } ;
typedef  TYPE_1__ name_entry_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(libpc_handle_t *hdl, nvlist_t *nv, name_entry_t *names)
{
	nvlist_t **child;
	uint_t c, children;
	uint64_t guid;
	name_entry_t *ne, *best;
	char *path;

	if (FUNC1(nv, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++)
			if (FUNC8(hdl, child[c], names) != 0)
				return (-1);
		return (0);
	}

	/*
	 * This is a leaf (file or disk) vdev.  In either case, go through
	 * the name list and see if we find a matching guid.  If so, replace
	 * the path and see if we can calculate a new devid.
	 *
	 * There may be multiple names associated with a particular guid, in
	 * which case we have overlapping partitions or multiple paths to the
	 * same disk.  In this case we prefer to use the path name which
	 * matches the ZPOOL_CONFIG_PATH.  If no matching entry is found we
	 * use the lowest order device which corresponds to the first match
	 * while traversing the ZPOOL_IMPORT_PATH search path.
	 */
	FUNC7(FUNC3(nv, ZPOOL_CONFIG_GUID, &guid) == 0);
	if (FUNC2(nv, ZPOOL_CONFIG_PATH, &path) != 0)
		path = NULL;

	best = NULL;
	for (ne = names; ne != NULL; ne = ne->ne_next) {
		if (ne->ne_guid == guid) {
			if (path == NULL) {
				best = ne;
				break;
			}

			if ((FUNC4(path) == FUNC4(ne->ne_name)) &&
			    FUNC5(path, ne->ne_name, FUNC4(path)) == 0) {
				best = ne;
				break;
			}

			if (best == NULL) {
				best = ne;
				continue;
			}

			/* Prefer paths with move vdev labels. */
			if (ne->ne_num_labels > best->ne_num_labels) {
				best = ne;
				continue;
			}

			/* Prefer paths earlier in the search order. */
			if (ne->ne_num_labels == best->ne_num_labels &&
			    ne->ne_order < best->ne_order) {
				best = ne;
				continue;
			}
		}
	}

	if (best == NULL)
		return (0);

	if (FUNC0(nv, ZPOOL_CONFIG_PATH, best->ne_name) != 0)
		return (-1);

	FUNC6(nv);

	return (0);
}