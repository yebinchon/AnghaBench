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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int FUNC1(const char *snapname, nvlist_t *props,
    nvlist_t *cmdprops, uint8_t *wkeydata, uint_t wkeylen, const char *origin,
    boolean_t force, boolean_t resumable, boolean_t raw, int input_fd,
    const dmu_replay_record_t *begin_record, int cleanup_fd,
    uint64_t *read_bytes, uint64_t *errflags, uint64_t *action_handle,
    nvlist_t **errors)
{
	return (FUNC0(snapname, props, cmdprops, wkeydata, wkeylen, origin,
	    force, resumable, raw, input_fd, begin_record, cleanup_fd,
	    read_bytes, errflags, action_handle, errors));
}