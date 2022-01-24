#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  offset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  f_offset; int /*<<< orphan*/  f_vnode; } ;
typedef  TYPE_1__ file_t ;
struct TYPE_6__ {int /*<<< orphan*/  dso_dryrun; int /*<<< orphan*/  dso_arg; int /*<<< orphan*/  dso_outfunc; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ dmu_send_outparams_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  dump_bytes ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
	int error;
	offset_t off;
	char *fromname = NULL;
	int fd;
	file_t *fp;
	boolean_t largeblockok;
	boolean_t embedok;
	boolean_t compressok;
	boolean_t rawok;
	uint64_t resumeobj = 0;
	uint64_t resumeoff = 0;
	char *redactbook = NULL;

	fd = FUNC3(innvl, "fd");

	(void) FUNC6(innvl, "fromsnap", &fromname);

	largeblockok = FUNC5(innvl, "largeblockok");
	embedok = FUNC5(innvl, "embedok");
	compressok = FUNC5(innvl, "compressok");
	rawok = FUNC5(innvl, "rawok");

	(void) FUNC7(innvl, "resume_object", &resumeobj);
	(void) FUNC7(innvl, "resume_offset", &resumeoff);

	(void) FUNC6(innvl, "redactbook", &redactbook);

	if ((fp = FUNC4(fd)) == NULL)
		return (FUNC0(EBADF));

	off = fp->f_offset;
	dmu_send_outparams_t out = {0};
	out.dso_outfunc = dump_bytes;
	out.dso_arg = fp->f_vnode;
	out.dso_dryrun = B_FALSE;
	error = FUNC2(snapname, fromname, embedok, largeblockok, compressok,
	    rawok, resumeobj, resumeoff, redactbook, fd, &off, &out);

	if (FUNC1(fp->f_vnode, fp->f_offset, &off, NULL) == 0)
		fp->f_offset = off;

	FUNC8(fd);
	return (error);
}