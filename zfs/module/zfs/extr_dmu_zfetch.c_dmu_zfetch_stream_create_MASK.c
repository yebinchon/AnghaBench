#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int zs_atime; int /*<<< orphan*/  zs_lock; void* zs_ipf_blkid; void* zs_pf_blkid; void* zs_blkid; } ;
typedef  TYPE_2__ zstream_t ;
struct TYPE_14__ {int /*<<< orphan*/  zf_stream; TYPE_1__* zf_dnode; int /*<<< orphan*/  zf_lock; } ;
typedef  TYPE_3__ zfetch_t ;
typedef  void* uint64_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int dn_maxblkid; int dn_datablksz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int NANOSEC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC6 () ; 
 TYPE_2__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int zfetch_max_distance ; 
 int /*<<< orphan*/  zfetch_max_streams ; 
 int zfetch_min_sec_reap ; 
 int /*<<< orphan*/  zfetchstat_max_streams ; 

__attribute__((used)) static void
FUNC12(zfetch_t *zf, uint64_t blkid)
{
	zstream_t *zs_next;
	int numstreams = 0;

	FUNC0(FUNC3(&zf->zf_lock));

	/*
	 * Clean up old streams.
	 */
	for (zstream_t *zs = FUNC8(&zf->zf_stream);
	    zs != NULL; zs = zs_next) {
		zs_next = FUNC10(&zf->zf_stream, zs);
		if (((FUNC6() - zs->zs_atime) / NANOSEC) >
		    zfetch_min_sec_reap)
			FUNC5(zf, zs);
		else
			numstreams++;
	}

	/*
	 * The maximum number of streams is normally zfetch_max_streams,
	 * but for small files we lower it such that it's at least possible
	 * for all the streams to be non-overlapping.
	 *
	 * If we are already at the maximum number of streams for this file,
	 * even after removing old streams, then don't create this stream.
	 */
	uint32_t max_streams = FUNC1(1, FUNC2(zfetch_max_streams,
	    zf->zf_dnode->dn_maxblkid * zf->zf_dnode->dn_datablksz /
	    zfetch_max_distance));
	if (numstreams >= max_streams) {
		FUNC4(zfetchstat_max_streams);
		return;
	}

	zstream_t *zs = FUNC7(sizeof (*zs), KM_SLEEP);
	zs->zs_blkid = blkid;
	zs->zs_pf_blkid = blkid;
	zs->zs_ipf_blkid = blkid;
	zs->zs_atime = FUNC6();
	FUNC11(&zs->zs_lock, NULL, MUTEX_DEFAULT, NULL);

	FUNC9(&zf->zf_stream, zs);
}