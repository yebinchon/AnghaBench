#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zpool_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  prop_keylocation ;
typedef  int /*<<< orphan*/  parent_name ;
typedef  int /*<<< orphan*/  origin_name ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  dcp_cmd_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DCP_CMD_INHERIT ; 
 int /*<<< orphan*/  DCP_CMD_NEW_KEY ; 
#define  EACCES 130 
#define  EINVAL 129 
 int ENOENT ; 
#define  EPERM 128 
 int /*<<< orphan*/  EZFS_CRYPTOFAILED ; 
 int MAXNAMELEN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ ZFS_KEYFORMAT_NONE ; 
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int /*<<< orphan*/  ZFS_PROP_ORIGIN ; 
 scalar_t__ ZIO_CRYPT_OFF ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*,char*,int) ; 
 int FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

int
FUNC23(zfs_handle_t *zhp, nvlist_t *raw_props, boolean_t inheritkey)
{
	int ret;
	char errbuf[1024];
	boolean_t is_encroot;
	nvlist_t *props = NULL;
	uint8_t *wkeydata = NULL;
	uint_t wkeylen = 0;
	dcp_cmd_t cmd = (inheritkey) ? DCP_CMD_INHERIT : DCP_CMD_NEW_KEY;
	uint64_t crypt, pcrypt, keystatus, pkeystatus;
	uint64_t keyformat = ZFS_KEYFORMAT_NONE;
	zfs_handle_t *pzhp = NULL;
	char *keylocation = NULL;
	char origin_name[MAXNAMELEN];
	char prop_keylocation[MAXNAMELEN];
	char parent_name[ZFS_MAX_DATASET_NAME_LEN];

	(void) FUNC11(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "Key change error"));

	/* check that encryption is enabled for the pool */
	if (!FUNC1(zhp->zpool_hdl)) {
		FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
		    "Encryption feature not enabled."));
		ret = EINVAL;
		goto error;
	}

	/* get crypt from dataset */
	crypt = FUNC21(zhp, ZFS_PROP_ENCRYPTION);
	if (crypt == ZIO_CRYPT_OFF) {
		FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
		    "Dataset not encrypted."));
		ret = EINVAL;
		goto error;
	}

	/* get the encryption root of the dataset */
	ret = FUNC14(zhp, &is_encroot, NULL);
	if (ret != 0) {
		FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
		    "Failed to get encryption root for '%s'."),
		    FUNC18(zhp));
		goto error;
	}

	/* Clones use their origin's key and cannot rewrap it */
	ret = FUNC20(zhp, ZFS_PROP_ORIGIN, origin_name,
	    sizeof (origin_name), NULL, NULL, 0, B_TRUE);
	if (ret == 0 && FUNC12(origin_name, "") != 0) {
		FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
		    "Keys cannot be changed on clones."));
		ret = EINVAL;
		goto error;
	}

	/*
	 * If the user wants to use the inheritkey variant of this function
	 * we don't need to collect any crypto arguments.
	 */
	if (!inheritkey) {
		/* validate the provided properties */
		ret = FUNC15(zhp, raw_props, &props,
		    errbuf);
		if (ret != 0)
			goto error;

		/*
		 * Load keyformat and keylocation from the nvlist. Fetch from
		 * the dataset properties if not specified.
		 */
		(void) FUNC9(props,
		    FUNC22(ZFS_PROP_KEYFORMAT), &keyformat);
		(void) FUNC8(props,
		    FUNC22(ZFS_PROP_KEYLOCATION), &keylocation);

		if (is_encroot) {
			/*
			 * If this is already an encryption root, just keep
			 * any properties not set by the user.
			 */
			if (keyformat == ZFS_KEYFORMAT_NONE) {
				keyformat = FUNC21(zhp,
				    ZFS_PROP_KEYFORMAT);
				ret = FUNC6(props,
				    FUNC22(ZFS_PROP_KEYFORMAT),
				    keyformat);
				if (ret != 0) {
					FUNC17(zhp->zfs_hdl,
					    FUNC0(TEXT_DOMAIN, "Failed to "
					    "get existing keyformat "
					    "property."));
					goto error;
				}
			}

			if (keylocation == NULL) {
				ret = FUNC20(zhp, ZFS_PROP_KEYLOCATION,
				    prop_keylocation, sizeof (prop_keylocation),
				    NULL, NULL, 0, B_TRUE);
				if (ret != 0) {
					FUNC17(zhp->zfs_hdl,
					    FUNC0(TEXT_DOMAIN, "Failed to "
					    "get existing keylocation "
					    "property."));
					goto error;
				}

				keylocation = prop_keylocation;
			}
		} else {
			/* need a new key for non-encryption roots */
			if (keyformat == ZFS_KEYFORMAT_NONE) {
				ret = EINVAL;
				FUNC17(zhp->zfs_hdl,
				    FUNC0(TEXT_DOMAIN, "Keyformat required "
				    "for new encryption root."));
				goto error;
			}

			/* default to prompt if no keylocation is specified */
			if (keylocation == NULL) {
				keylocation = "prompt";
				ret = FUNC5(props,
				    FUNC22(ZFS_PROP_KEYLOCATION),
				    keylocation);
				if (ret != 0)
					goto error;
			}
		}

		/* fetch the new wrapping key and associated properties */
		ret = FUNC10(zhp->zfs_hdl,
		    zhp, B_TRUE, keyformat, keylocation, props, &wkeydata,
		    &wkeylen);
		if (ret != 0)
			goto error;
	} else {
		/* check that zhp is an encryption root */
		if (!is_encroot) {
			FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Key inheritting can only be performed on "
			    "encryption roots."));
			ret = EINVAL;
			goto error;
		}

		/* get the parent's name */
		ret = FUNC19(zhp, parent_name, sizeof (parent_name));
		if (ret != 0) {
			FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Root dataset cannot inherit key."));
			ret = EINVAL;
			goto error;
		}

		/* get a handle to the parent */
		pzhp = FUNC4(zhp->zfs_hdl, parent_name);
		if (pzhp == NULL) {
			FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Failed to lookup parent."));
			ret = ENOENT;
			goto error;
		}

		/* parent must be encrypted */
		pcrypt = FUNC21(pzhp, ZFS_PROP_ENCRYPTION);
		if (pcrypt == ZIO_CRYPT_OFF) {
			FUNC17(pzhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Parent must be encrypted."));
			ret = EINVAL;
			goto error;
		}

		/* check that the parent's key is loaded */
		pkeystatus = FUNC21(pzhp, ZFS_PROP_KEYSTATUS);
		if (pkeystatus == ZFS_KEYSTATUS_UNAVAILABLE) {
			FUNC17(pzhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Parent key must be loaded."));
			ret = EACCES;
			goto error;
		}
	}

	/* check that the key is loaded */
	keystatus = FUNC21(zhp, ZFS_PROP_KEYSTATUS);
	if (keystatus == ZFS_KEYSTATUS_UNAVAILABLE) {
		FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
		    "Key must be loaded."));
		ret = EACCES;
		goto error;
	}

	/* call the ioctl */
	ret = FUNC3(zhp->zfs_name, cmd, props, wkeydata, wkeylen);
	if (ret != 0) {
		switch (ret) {
		case EPERM:
			FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Permission denied."));
			break;
		case EINVAL:
			FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Invalid properties for key change."));
			break;
		case EACCES:
			FUNC17(zhp->zfs_hdl, FUNC0(TEXT_DOMAIN,
			    "Key is not currently loaded."));
			break;
		}
		FUNC16(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
	}

	if (pzhp != NULL)
		FUNC13(pzhp);
	if (props != NULL)
		FUNC7(props);
	if (wkeydata != NULL)
		FUNC2(wkeydata);

	return (ret);

error:
	if (pzhp != NULL)
		FUNC13(pzhp);
	if (props != NULL)
		FUNC7(props);
	if (wkeydata != NULL)
		FUNC2(wkeydata);

	FUNC16(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
	return (ret);
}