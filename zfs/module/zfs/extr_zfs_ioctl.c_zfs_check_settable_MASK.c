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
typedef  int zfs_prop_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  spa_feature_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 scalar_t__ DATA_TYPE_UINT64 ; 
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_BLOCKS ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_DNODE ; 
 int /*<<< orphan*/  SPA_FEATURE_LZ4_COMPRESS ; 
 int /*<<< orphan*/  SPA_FEATURE_NONE ; 
 int SPA_MAXBLOCKSIZE ; 
 int SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  SPA_VERSION_DEDUP ; 
 int /*<<< orphan*/  SPA_VERSION_DITTO_BLOCKS ; 
 int /*<<< orphan*/  SPA_VERSION_GZIP_COMPRESSION ; 
 int /*<<< orphan*/  SPA_VERSION_PASSTHROUGH_X ; 
 int /*<<< orphan*/  SPA_VERSION_ZLE_COMPRESSION ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ZFS_ACL_PASSTHROUGH_X ; 
 char* ZFS_DELEG_PERM_GROUPOBJQUOTA ; 
 char* ZFS_DELEG_PERM_GROUPQUOTA ; 
 char* ZFS_DELEG_PERM_PROJECTOBJQUOTA ; 
 char* ZFS_DELEG_PERM_PROJECTQUOTA ; 
 char* ZFS_DELEG_PERM_USEROBJQUOTA ; 
 char const* ZFS_DELEG_PERM_USERPROP ; 
 char* ZFS_DELEG_PERM_USERQUOTA ; 
 int ZFS_DNSIZE_LEGACY ; 
#define  ZFS_PROP_ACLINHERIT 137 
#define  ZFS_PROP_CHECKSUM 136 
#define  ZFS_PROP_COMPRESSION 135 
#define  ZFS_PROP_COPIES 134 
#define  ZFS_PROP_DEDUP 133 
#define  ZFS_PROP_DNODESIZE 132 
 size_t ZFS_PROP_GROUPOBJQUOTA ; 
 size_t ZFS_PROP_GROUPQUOTA ; 
 size_t ZFS_PROP_PROJECTOBJQUOTA ; 
 size_t ZFS_PROP_PROJECTQUOTA ; 
#define  ZFS_PROP_RECORDSIZE 131 
#define  ZFS_PROP_SHARESMB 130 
#define  ZFS_PROP_SPECIAL_SMALL_BLOCKS 129 
 size_t ZFS_PROP_USEROBJQUOTA ; 
 size_t ZFS_PROP_USERQUOTA ; 
#define  ZFS_PROP_VOLBLOCKSIZE 128 
 int ZIO_CHECKSUM_MASK ; 
 int ZIO_COMPRESS_GZIP_1 ; 
 int ZIO_COMPRESS_GZIP_9 ; 
 int ZIO_COMPRESS_LZ4 ; 
 int ZIO_COMPRESS_ZLE ; 
 int /*<<< orphan*/  ZPL_VERSION_FUID ; 
 int ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,char) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int zfs_max_recordsize ; 
 int FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int FUNC20 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char** zfs_userquota_prop_prefixes ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(const char *dsname, nvpair_t *pair, cred_t *cr)
{
	const char *propname = FUNC5(pair);
	boolean_t issnap = (FUNC12(dsname, '@') != NULL);
	zfs_prop_t prop = FUNC17(propname);
	uint64_t intval;
	int err;

	if (prop == ZPROP_INVAL) {
		if (FUNC18(propname)) {
			if ((err = FUNC21(dsname,
			    ZFS_DELEG_PERM_USERPROP, cr)))
				return (err);
			return (0);
		}

		if (!issnap && FUNC19(propname)) {
			const char *perm = NULL;
			const char *uq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_USERQUOTA];
			const char *gq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_GROUPQUOTA];
			const char *uiq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_USEROBJQUOTA];
			const char *giq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_GROUPOBJQUOTA];
			const char *pq_prefix =
			    zfs_userquota_prop_prefixes[ZFS_PROP_PROJECTQUOTA];
			const char *piq_prefix = zfs_userquota_prop_prefixes[\
			    ZFS_PROP_PROJECTOBJQUOTA];

			if (FUNC14(propname, uq_prefix,
			    FUNC13(uq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_USERQUOTA;
			} else if (FUNC14(propname, uiq_prefix,
			    FUNC13(uiq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_USEROBJQUOTA;
			} else if (FUNC14(propname, gq_prefix,
			    FUNC13(gq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_GROUPQUOTA;
			} else if (FUNC14(propname, giq_prefix,
			    FUNC13(giq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_GROUPOBJQUOTA;
			} else if (FUNC14(propname, pq_prefix,
			    FUNC13(pq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_PROJECTQUOTA;
			} else if (FUNC14(propname, piq_prefix,
			    FUNC13(piq_prefix)) == 0) {
				perm = ZFS_DELEG_PERM_PROJECTOBJQUOTA;
			} else {
				/* {USER|GROUP|PROJECT}USED are read-only */
				return (FUNC2(EINVAL));
			}

			if ((err = FUNC21(dsname, perm, cr)))
				return (err);
			return (0);
		}

		return (FUNC2(EINVAL));
	}

	if (issnap)
		return (FUNC2(EINVAL));

	if (FUNC6(pair) == DATA_TYPE_NVLIST) {
		/*
		 * dsl_prop_get_all_impl() returns properties in this
		 * format.
		 */
		nvlist_t *attrs;
		FUNC3(FUNC7(pair, &attrs) == 0);
		FUNC3(FUNC4(attrs, ZPROP_VALUE,
		    &pair) == 0);
	}

	/*
	 * Check that this value is valid for this pool version
	 */
	switch (prop) {
	case ZFS_PROP_COMPRESSION:
		/*
		 * If the user specified gzip compression, make sure
		 * the SPA supports it. We ignore any errors here since
		 * we'll catch them later.
		 */
		if (FUNC8(pair, &intval) == 0) {
			if (intval >= ZIO_COMPRESS_GZIP_1 &&
			    intval <= ZIO_COMPRESS_GZIP_9 &&
			    FUNC15(dsname,
			    SPA_VERSION_GZIP_COMPRESSION)) {
				return (FUNC2(ENOTSUP));
			}

			if (intval == ZIO_COMPRESS_ZLE &&
			    FUNC15(dsname,
			    SPA_VERSION_ZLE_COMPRESSION))
				return (FUNC2(ENOTSUP));

			if (intval == ZIO_COMPRESS_LZ4) {
				spa_t *spa;

				if ((err = FUNC11(dsname, &spa, FTAG)) != 0)
					return (err);

				if (!FUNC10(spa,
				    SPA_FEATURE_LZ4_COMPRESS)) {
					FUNC9(spa, FTAG);
					return (FUNC2(ENOTSUP));
				}
				FUNC9(spa, FTAG);
			}

			/*
			 * If this is a bootable dataset then
			 * verify that the compression algorithm
			 * is supported for booting. We must return
			 * something other than ENOTSUP since it
			 * implies a downrev pool version.
			 */
			if (FUNC16(dsname) &&
			    !FUNC0(intval)) {
				return (FUNC2(ERANGE));
			}
		}
		break;

	case ZFS_PROP_COPIES:
		if (FUNC15(dsname, SPA_VERSION_DITTO_BLOCKS))
			return (FUNC2(ENOTSUP));
		break;

	case ZFS_PROP_VOLBLOCKSIZE:
	case ZFS_PROP_RECORDSIZE:
		/* Record sizes above 128k need the feature to be enabled */
		if (FUNC8(pair, &intval) == 0 &&
		    intval > SPA_OLD_MAXBLOCKSIZE) {
			spa_t *spa;

			/*
			 * We don't allow setting the property above 1MB,
			 * unless the tunable has been changed.
			 */
			if (intval > zfs_max_recordsize ||
			    intval > SPA_MAXBLOCKSIZE)
				return (FUNC2(ERANGE));

			if ((err = FUNC11(dsname, &spa, FTAG)) != 0)
				return (err);

			if (!FUNC10(spa,
			    SPA_FEATURE_LARGE_BLOCKS)) {
				FUNC9(spa, FTAG);
				return (FUNC2(ENOTSUP));
			}
			FUNC9(spa, FTAG);
		}
		break;

	case ZFS_PROP_DNODESIZE:
		/* Dnode sizes above 512 need the feature to be enabled */
		if (FUNC8(pair, &intval) == 0 &&
		    intval != ZFS_DNSIZE_LEGACY) {
			spa_t *spa;

			/*
			 * If this is a bootable dataset then
			 * we don't allow large (>512B) dnodes,
			 * because GRUB doesn't support them.
			 */
			if (FUNC16(dsname) &&
			    intval != ZFS_DNSIZE_LEGACY) {
				return (FUNC2(EDOM));
			}

			if ((err = FUNC11(dsname, &spa, FTAG)) != 0)
				return (err);

			if (!FUNC10(spa,
			    SPA_FEATURE_LARGE_DNODE)) {
				FUNC9(spa, FTAG);
				return (FUNC2(ENOTSUP));
			}
			FUNC9(spa, FTAG);
		}
		break;

	case ZFS_PROP_SPECIAL_SMALL_BLOCKS:
		/*
		 * This property could require the allocation classes
		 * feature to be active for setting, however we allow
		 * it so that tests of settable properties succeed.
		 * The CLI will issue a warning in this case.
		 */
		break;

	case ZFS_PROP_SHARESMB:
		if (FUNC23(dsname, ZPL_VERSION_FUID))
			return (FUNC2(ENOTSUP));
		break;

	case ZFS_PROP_ACLINHERIT:
		if (FUNC6(pair) == DATA_TYPE_UINT64 &&
		    FUNC8(pair, &intval) == 0) {
			if (intval == ZFS_ACL_PASSTHROUGH_X &&
			    FUNC15(dsname,
			    SPA_VERSION_PASSTHROUGH_X))
				return (FUNC2(ENOTSUP));
		}
		break;
	case ZFS_PROP_CHECKSUM:
	case ZFS_PROP_DEDUP:
	{
		spa_feature_t feature;
		spa_t *spa;
		int err;

		/* dedup feature version checks */
		if (prop == ZFS_PROP_DEDUP &&
		    FUNC15(dsname, SPA_VERSION_DEDUP))
			return (FUNC2(ENOTSUP));

		if (FUNC6(pair) == DATA_TYPE_UINT64 &&
		    FUNC8(pair, &intval) == 0) {
			/* check prop value is enabled in features */
			feature = FUNC22(
			    intval & ZIO_CHECKSUM_MASK);
			if (feature == SPA_FEATURE_NONE)
				break;

			if ((err = FUNC11(dsname, &spa, FTAG)) != 0)
				return (err);

			if (!FUNC10(spa, feature)) {
				FUNC9(spa, FTAG);
				return (FUNC2(ENOTSUP));
			}
			FUNC9(spa, FTAG);
		}
		break;
	}

	default:
		break;
	}

	return (FUNC20(dsname, prop, pair, FUNC1()));
}