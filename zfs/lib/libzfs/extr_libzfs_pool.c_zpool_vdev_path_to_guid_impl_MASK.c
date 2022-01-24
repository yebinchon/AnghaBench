#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC3(zpool_handle_t *zhp, const char *path,
    boolean_t *is_spare, boolean_t *is_l2cache, boolean_t *is_log)
{
	uint64_t guid;
	boolean_t spare = B_FALSE, l2cache = B_FALSE, log = B_FALSE;
	nvlist_t *tgt;

	if ((tgt = FUNC2(zhp, path, &spare, &l2cache,
	    &log)) == NULL)
		return (0);

	FUNC1(FUNC0(tgt, ZPOOL_CONFIG_GUID, &guid) == 0);
	if (is_spare != NULL)
		*is_spare = spare;
	if (is_l2cache != NULL)
		*is_l2cache = l2cache;
	if (is_log != NULL)
		*is_log = log;

	return (guid);
}