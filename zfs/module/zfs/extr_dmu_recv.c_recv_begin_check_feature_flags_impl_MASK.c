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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int DMU_BACKUP_FEATURE_EMBED_DATA ; 
 int DMU_BACKUP_FEATURE_LARGE_BLOCKS ; 
 int DMU_BACKUP_FEATURE_LARGE_DNODE ; 
 int DMU_BACKUP_FEATURE_LZ4 ; 
 int DMU_BACKUP_FEATURE_REDACTED ; 
 int DMU_BACKUP_FEATURE_SA_SPILL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_EMBEDDED_DATA ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_BLOCKS ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_DNODE ; 
 int /*<<< orphan*/  SPA_FEATURE_LZ4_COMPRESS ; 
 int /*<<< orphan*/  SPA_FEATURE_REDACTED_DATASETS ; 
 scalar_t__ SPA_VERSION_SA ; 
 int /*<<< orphan*/  ZFS_ERR_UNKNOWN_SEND_STREAM_FEATURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(uint64_t featureflags, spa_t *spa)
{
	/*
	 * Check if there are any unsupported feature flags.
	 */
	if (!FUNC0(featureflags)) {
		return (FUNC1(ZFS_ERR_UNKNOWN_SEND_STREAM_FEATURE));
	}

	/* Verify pool version supports SA if SA_SPILL feature set */
	if ((featureflags & DMU_BACKUP_FEATURE_SA_SPILL) &&
	    FUNC3(spa) < SPA_VERSION_SA)
		return (FUNC1(ENOTSUP));

	/*
	 * LZ4 compressed, embedded, mooched, large blocks, and large_dnodes
	 * in the stream can only be used if those pool features are enabled
	 * because we don't attempt to decompress / un-embed / un-mooch /
	 * split up the blocks / dnodes during the receive process.
	 */
	if ((featureflags & DMU_BACKUP_FEATURE_LZ4) &&
	    !FUNC2(spa, SPA_FEATURE_LZ4_COMPRESS))
		return (FUNC1(ENOTSUP));
	if ((featureflags & DMU_BACKUP_FEATURE_EMBED_DATA) &&
	    !FUNC2(spa, SPA_FEATURE_EMBEDDED_DATA))
		return (FUNC1(ENOTSUP));
	if ((featureflags & DMU_BACKUP_FEATURE_LARGE_BLOCKS) &&
	    !FUNC2(spa, SPA_FEATURE_LARGE_BLOCKS))
		return (FUNC1(ENOTSUP));
	if ((featureflags & DMU_BACKUP_FEATURE_LARGE_DNODE) &&
	    !FUNC2(spa, SPA_FEATURE_LARGE_DNODE))
		return (FUNC1(ENOTSUP));

	/*
	 * Receiving redacted streams requires that redacted datasets are
	 * enabled.
	 */
	if ((featureflags & DMU_BACKUP_FEATURE_REDACTED) &&
	    !FUNC2(spa, SPA_FEATURE_REDACTED_DATASETS))
		return (FUNC1(ENOTSUP));

	return (0);
}