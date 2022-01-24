#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ub_checkpoint_txg; int /*<<< orphan*/  ub_rootbp; scalar_t__ ub_mmp_config; scalar_t__ ub_mmp_delay; scalar_t__ ub_mmp_magic; scalar_t__ ub_timestamp; scalar_t__ ub_guid_sum; scalar_t__ ub_txg; scalar_t__ ub_version; scalar_t__ ub_magic; } ;
typedef  TYPE_1__ uberblock_t ;
typedef  char const* u_longlong_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int BP_SPRINTF_LEN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(uberblock_t *ub, const char *header, const char *footer)
{
	time_t timestamp = ub->ub_timestamp;

	(void) FUNC9("%s", header ? header : "");
	(void) FUNC9("\tmagic = %016llx\n", (u_longlong_t)ub->ub_magic);
	(void) FUNC9("\tversion = %llu\n", (u_longlong_t)ub->ub_version);
	(void) FUNC9("\ttxg = %llu\n", (u_longlong_t)ub->ub_txg);
	(void) FUNC9("\tguid_sum = %llu\n", (u_longlong_t)ub->ub_guid_sum);
	(void) FUNC9("\ttimestamp = %llu UTC = %s",
	    (u_longlong_t)ub->ub_timestamp, FUNC7(FUNC8(&timestamp)));

	(void) FUNC9("\tmmp_magic = %016llx\n",
	    (u_longlong_t)ub->ub_mmp_magic);
	if (FUNC6(ub)) {
		(void) FUNC9("\tmmp_delay = %0llu\n",
		    (u_longlong_t)ub->ub_mmp_delay);
		if (FUNC5(ub))
			(void) FUNC9("\tmmp_seq = %u\n",
			    (unsigned int) FUNC4(ub));
		if (FUNC1(ub))
			(void) FUNC9("\tmmp_fail = %u\n",
			    (unsigned int) FUNC0(ub));
		if (FUNC3(ub))
			(void) FUNC9("\tmmp_write = %u\n",
			    (unsigned int) FUNC2(ub));
		/* After MMP_* to make summarize_uberblock_mmp cleaner */
		(void) FUNC9("\tmmp_valid = %x\n",
		    (unsigned int) ub->ub_mmp_config & 0xFF);
	}

	if (dump_opt['u'] >= 4) {
		char blkbuf[BP_SPRINTF_LEN];
		FUNC10(blkbuf, sizeof (blkbuf), &ub->ub_rootbp);
		(void) FUNC9("\trootbp = %s\n", blkbuf);
	}
	(void) FUNC9("\tcheckpoint_txg = %llu\n",
	    (u_longlong_t)ub->ub_checkpoint_txg);
	(void) FUNC9("%s", footer ? footer : "");
}