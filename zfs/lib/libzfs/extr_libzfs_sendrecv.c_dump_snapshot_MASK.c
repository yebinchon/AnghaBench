#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  dds_guid; } ;
struct TYPE_15__ {char* zfs_name; int /*<<< orphan*/  zfs_hdl; TYPE_1__ zfs_dmustats; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_16__ {char* prevsnap; scalar_t__ (* filter_cb ) (TYPE_2__*,int /*<<< orphan*/ ) ;scalar_t__ verbosity; void* prevsnap_obj; scalar_t__ progress; int /*<<< orphan*/  debugnv; int /*<<< orphan*/  outfd; int /*<<< orphan*/  parsable; int /*<<< orphan*/  dryrun; int /*<<< orphan*/  size; scalar_t__ replicate; scalar_t__ fromorigin; int /*<<< orphan*/  filter_cb_arg; int /*<<< orphan*/  fsavl; int /*<<< orphan*/  doall; scalar_t__ raw; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ large_block; void* seento; int /*<<< orphan*/ * tosnap; void* seenfrom; int /*<<< orphan*/ * fromsnap; scalar_t__ std_out; } ;
typedef  TYPE_3__ send_dump_data_t ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_17__ {scalar_t__ pa_verbosity; scalar_t__ pa_estimate; int /*<<< orphan*/  pa_parsable; int /*<<< orphan*/  pa_fd; TYPE_2__* pa_zhp; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ progress_arg_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fromds ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 void* B_TRUE ; 
 int LZC_SEND_FLAG_COMPRESS ; 
 int LZC_SEND_FLAG_EMBED_DATA ; 
 int LZC_SEND_FLAG_LARGE_BLOCK ; 
 int LZC_SEND_FLAG_RAW ; 
 void* PTHREAD_CANCELED ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_OBJSETID ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,char*,void*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_progress_thread ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 void* FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_2__*,char*,char*,int,scalar_t__*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC22(zfs_handle_t *zhp, void *arg)
{
	send_dump_data_t *sdd = arg;
	progress_arg_t pa = { 0 };
	pthread_t tid;
	char *thissnap;
	enum lzc_send_flags flags = 0;
	int err;
	boolean_t isfromsnap, istosnap, fromorigin;
	boolean_t exclude = B_FALSE;
	FILE *fout = sdd->std_out ? stdout : stderr;

	err = 0;
	thissnap = FUNC12(zhp->zfs_name, '@') + 1;
	isfromsnap = (sdd->fromsnap != NULL &&
	    FUNC13(sdd->fromsnap, thissnap) == 0);

	if (!sdd->seenfrom && isfromsnap) {
		FUNC4(zhp, sdd);
		sdd->seenfrom = B_TRUE;
		(void) FUNC16(sdd->prevsnap, thissnap,
		    sizeof (sdd->prevsnap));
		sdd->prevsnap_obj = FUNC19(zhp, ZFS_PROP_OBJSETID);
		FUNC18(zhp);
		return (0);
	}

	if (sdd->seento || !sdd->seenfrom) {
		FUNC18(zhp);
		return (0);
	}

	istosnap = (FUNC13(sdd->tosnap, thissnap) == 0);
	if (istosnap)
		sdd->seento = B_TRUE;

	if (sdd->large_block)
		flags |= LZC_SEND_FLAG_LARGE_BLOCK;
	if (sdd->embed_data)
		flags |= LZC_SEND_FLAG_EMBED_DATA;
	if (sdd->compress)
		flags |= LZC_SEND_FLAG_COMPRESS;
	if (sdd->raw)
		flags |= LZC_SEND_FLAG_RAW;

	if (!sdd->doall && !isfromsnap && !istosnap) {
		if (sdd->replicate) {
			char *snapname;
			nvlist_t *snapprops;
			/*
			 * Filter out all intermediate snapshots except origin
			 * snapshots needed to replicate clones.
			 */
			nvlist_t *nvfs = FUNC3(sdd->fsavl,
			    zhp->zfs_dmustats.dds_guid, &snapname);

			FUNC0(0 == FUNC6(nvfs,
			    "snapprops", &snapprops));
			FUNC0(0 == FUNC6(snapprops,
			    thissnap, &snapprops));
			exclude = !FUNC5(snapprops, "is_clone_origin");
		} else {
			exclude = B_TRUE;
		}
	}

	/*
	 * If a filter function exists, call it to determine whether
	 * this snapshot will be sent.
	 */
	if (exclude || (sdd->filter_cb != NULL &&
	    sdd->filter_cb(zhp, sdd->filter_cb_arg) == B_FALSE)) {
		/*
		 * This snapshot is filtered out.  Don't send it, and don't
		 * set prevsnap_obj, so it will be as if this snapshot didn't
		 * exist, and the next accepted snapshot will be sent as
		 * an incremental from the last accepted one, or as the
		 * first (and full) snapshot in the case of a replication,
		 * non-incremental send.
		 */
		FUNC18(zhp);
		return (0);
	}

	FUNC4(zhp, sdd);
	fromorigin = sdd->prevsnap[0] == '\0' &&
	    (sdd->fromorigin || sdd->replicate);

	if (sdd->verbosity != 0) {
		uint64_t size = 0;
		char fromds[ZFS_MAX_DATASET_NAME_LEN];

		if (sdd->prevsnap[0] != '\0') {
			(void) FUNC16(fromds, zhp->zfs_name, sizeof (fromds));
			*(FUNC12(fromds, '@') + 1) = '\0';
			(void) FUNC15(fromds, sdd->prevsnap, sizeof (fromds));
		}
		if (FUNC20(zhp, zhp->zfs_name,
		    sdd->prevsnap[0] ? fromds : NULL, flags, &size) != 0) {
			size = 0; /* cannot estimate send space */
		} else {
			FUNC10(fout, zhp->zfs_name,
			    sdd->prevsnap[0] ? sdd->prevsnap : NULL,
			    size, sdd->parsable);
		}
		sdd->size += size;
	}

	if (!sdd->dryrun) {
		/*
		 * If progress reporting is requested, spawn a new thread to
		 * poll ZFS_IOC_SEND_PROGRESS at a regular interval.
		 */
		if (sdd->progress) {
			pa.pa_zhp = zhp;
			pa.pa_fd = sdd->outfd;
			pa.pa_parsable = sdd->parsable;
			pa.pa_estimate = B_FALSE;
			pa.pa_verbosity = sdd->verbosity;

			if ((err = FUNC8(&tid, NULL,
			    send_progress_thread, &pa)) != 0) {
				FUNC18(zhp);
				return (err);
			}
		}

		err = FUNC2(zhp, sdd->prevsnap, sdd->prevsnap_obj,
		    fromorigin, sdd->outfd, flags, sdd->debugnv);

		if (sdd->progress) {
			void *status = NULL;
			(void) FUNC7(tid);
			(void) FUNC9(tid, &status);
			int error = (int)(uintptr_t)status;
			if (error != 0 && status != PTHREAD_CANCELED) {
				char errbuf[1024];
				(void) FUNC11(errbuf, sizeof (errbuf),
				    FUNC1(TEXT_DOMAIN,
				    "progress thread exited nonzero"));
				return (FUNC21(zhp->zfs_hdl, error,
				    errbuf));
			}
		}
	}

	(void) FUNC14(sdd->prevsnap, thissnap);
	sdd->prevsnap_obj = FUNC19(zhp, ZFS_PROP_OBJSETID);
	FUNC18(zhp);
	return (err);
}