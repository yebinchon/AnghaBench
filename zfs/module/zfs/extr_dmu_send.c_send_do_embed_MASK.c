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
struct TYPE_3__ {int dsc_featureflags; } ;
typedef  TYPE_1__ dmu_send_cookie_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
#define  BP_EMBEDDED_TYPE_DATA 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int DMU_BACKUP_FEATURE_EMBED_DATA ; 
 int DMU_BACKUP_FEATURE_LZ4 ; 
 scalar_t__ ZIO_COMPRESS_LEGACY_FUNCTIONS ; 

__attribute__((used)) static boolean_t
FUNC3(dmu_send_cookie_t *dscp, const blkptr_t *bp)
{
	if (!FUNC2(bp))
		return (B_FALSE);

	/*
	 * Compression function must be legacy, or explicitly enabled.
	 */
	if ((FUNC1(bp) >= ZIO_COMPRESS_LEGACY_FUNCTIONS &&
	    !(dscp->dsc_featureflags & DMU_BACKUP_FEATURE_LZ4)))
		return (B_FALSE);

	/*
	 * Embed type must be explicitly enabled.
	 */
	switch (FUNC0(bp)) {
	case BP_EMBEDDED_TYPE_DATA:
		if (dscp->dsc_featureflags & DMU_BACKUP_FEATURE_EMBED_DATA)
			return (B_TRUE);
		break;
	default:
		return (B_FALSE);
	}
	return (B_FALSE);
}