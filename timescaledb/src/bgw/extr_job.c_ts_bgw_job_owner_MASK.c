#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  job_type; int /*<<< orphan*/  id; } ;
struct TYPE_23__ {int bgw_type; TYPE_4__ fd; } ;
struct TYPE_18__ {int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_22__ {TYPE_3__ fd; } ;
struct TYPE_17__ {int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_21__ {TYPE_2__ fd; } ;
struct TYPE_16__ {int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_20__ {TYPE_1__ fd; } ;
struct TYPE_15__ {int /*<<< orphan*/  owner_uid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ContinuousAgg ;
typedef  TYPE_5__ BgwPolicyReorder ;
typedef  TYPE_6__ BgwPolicyDropChunks ;
typedef  TYPE_7__ BgwPolicyCompressChunks ;
typedef  TYPE_8__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  JOB_TYPE_COMPRESS_CHUNKS 134 
#define  JOB_TYPE_CONTINUOUS_AGGREGATE 133 
#define  JOB_TYPE_DROP_CHUNKS 132 
#define  JOB_TYPE_REORDER 131 
#define  JOB_TYPE_UNKNOWN 130 
#define  JOB_TYPE_VERSION_CHECK 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  _MAX_JOB_TYPE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 

Oid
FUNC11(BgwJob *job)
{
	switch (job->bgw_type)
	{
		case JOB_TYPE_VERSION_CHECK:
			return FUNC5()->owner_uid;
		case JOB_TYPE_REORDER:
		{
			BgwPolicyReorder *policy = FUNC4(job->fd.id);

			if (policy == NULL)
				FUNC1(ERROR, "reorder policy for job with id \"%d\" not found", job->fd.id);

			return FUNC9(FUNC8(policy->fd.hypertable_id));
		}
		case JOB_TYPE_DROP_CHUNKS:
		{
			BgwPolicyDropChunks *policy = FUNC3(job->fd.id);

			if (policy == NULL)
				FUNC1(ERROR, "drop_chunks policy for job with id \"%d\" not found", job->fd.id);

			return FUNC9(FUNC8(policy->fd.hypertable_id));
		}
		case JOB_TYPE_CONTINUOUS_AGGREGATE:
		{
			ContinuousAgg *ca = FUNC6(job->fd.id);

			if (ca == NULL)
				FUNC1(ERROR, "continuous aggregate for job with id \"%d\" not found", job->fd.id);

			return FUNC9(FUNC7(ca));
		}
		case JOB_TYPE_COMPRESS_CHUNKS:
		{
			BgwPolicyCompressChunks *policy = FUNC2(job->fd.id);
			if (policy == NULL)
				FUNC1(ERROR, "compress chunks policy for job with id \"%d\" not found", job->fd.id);
			return FUNC9(FUNC8(policy->fd.hypertable_id));
		}
		case JOB_TYPE_UNKNOWN:
			if (&unknown_job_type_owner_hook != NULL)
				return FUNC10(job);
			break;
		case _MAX_JOB_TYPE:
			break;
	}
	FUNC1(ERROR, "unknown job type \"%s\" in finding owner", FUNC0(job->fd.job_type));
}