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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;

/* Variables and functions */
 int LZC_SEND_FLAG_COMPRESS ; 
 int LZC_SEND_FLAG_EMBED_DATA ; 
 int LZC_SEND_FLAG_LARGE_BLOCK ; 
 int LZC_SEND_FLAG_RAW ; 
 int /*<<< orphan*/  ZFS_IOC_SEND_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(const char *snapname, const char *from,
    enum lzc_send_flags flags, uint64_t resumeobj, uint64_t resumeoff,
    uint64_t resume_bytes, const char *redactbook, int fd, uint64_t *spacep)
{
	nvlist_t *args;
	nvlist_t *result;
	int err;

	args = FUNC4();
	if (from != NULL)
		FUNC2(args, "from", from);
	if (flags & LZC_SEND_FLAG_LARGE_BLOCK)
		FUNC0(args, "largeblockok");
	if (flags & LZC_SEND_FLAG_EMBED_DATA)
		FUNC0(args, "embedok");
	if (flags & LZC_SEND_FLAG_COMPRESS)
		FUNC0(args, "compressok");
	if (flags & LZC_SEND_FLAG_RAW)
		FUNC0(args, "rawok");
	if (resumeobj != 0 || resumeoff != 0) {
		FUNC3(args, "resume_object", resumeobj);
		FUNC3(args, "resume_offset", resumeoff);
		FUNC3(args, "bytes", resume_bytes);
	}
	if (redactbook != NULL)
		FUNC2(args, "redactbook", redactbook);
	if (fd != -1)
		FUNC1(args, "fd", fd);

	err = FUNC6(ZFS_IOC_SEND_SPACE, snapname, args, &result);
	FUNC7(args);
	if (err == 0)
		*spacep = FUNC5(result, "space");
	FUNC7(result);
	return (err);
}