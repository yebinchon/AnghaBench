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
struct TYPE_3__ {size_t zns_leaf_total; size_t zns_leaf_largest; int /*<<< orphan*/  zns_leaf_count; int /*<<< orphan*/  zns_boolean; int /*<<< orphan*/  zns_uint64; int /*<<< orphan*/  zns_string; int /*<<< orphan*/  zns_list_count; } ;
typedef  TYPE_1__ zdb_nvl_stats_t ;
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
#define  DATA_TYPE_BOOLEAN 132 
#define  DATA_TYPE_NVLIST 131 
#define  DATA_TYPE_NVLIST_ARRAY 130 
#define  DATA_TYPE_STRING 129 
#define  DATA_TYPE_UINT64 128 
 int /*<<< orphan*/  NV_ENCODE_XDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(nvlist_t *nvl, zdb_nvl_stats_t *stats)
{
	nvlist_t *list, **array;
	nvpair_t *nvp = NULL;
	char *name;
	uint_t i, items;

	stats->zns_list_count++;

	while ((nvp = FUNC5(nvl, nvp)) != NULL) {
		name = FUNC7(nvp);

		switch (FUNC8(nvp)) {
		case DATA_TYPE_STRING:
			FUNC1(stats->zns_string, name,
			    FUNC3(nvp));
			break;
		case DATA_TYPE_UINT64:
			FUNC2(stats->zns_uint64, name,
			    FUNC4(nvp));
			break;
		case DATA_TYPE_BOOLEAN:
			FUNC0(stats->zns_boolean, name);
			break;
		case DATA_TYPE_NVLIST:
			if (FUNC9(nvp, &list) == 0)
				FUNC13(list, stats);
			break;
		case DATA_TYPE_NVLIST_ARRAY:
			if (FUNC10(nvp, &array, &items) != 0)
				break;

			for (i = 0; i < items; i++) {
				FUNC13(array[i], stats);

				/* collect stats on leaf vdev */
				if (FUNC12(name, "children") == 0) {
					size_t size;

					(void) FUNC6(array[i], &size,
					    NV_ENCODE_XDR);
					stats->zns_leaf_total += size;
					if (size > stats->zns_leaf_largest)
						stats->zns_leaf_largest = size;
					stats->zns_leaf_count++;
				}
			}
			break;
		default:
			(void) FUNC11("skip type %d!\n", (int)FUNC8(nvp));
		}
	}
}