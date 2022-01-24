#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zpool_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ ZFS_KEYFORMAT_NONE ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 scalar_t__ ZIO_CRYPT_INHERIT ; 
 scalar_t__ ZIO_CRYPT_OFF ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int
FUNC16(libzfs_handle_t *hdl, char *parent_name, nvlist_t *props,
    nvlist_t *pool_props, boolean_t stdin_available, uint8_t **wkeydata_out,
    uint_t *wkeylen_out)
{
	int ret;
	char errbuf[1024];
	uint64_t crypt = ZIO_CRYPT_INHERIT, pcrypt = ZIO_CRYPT_INHERIT;
	uint64_t keyformat = ZFS_KEYFORMAT_NONE;
	char *keylocation = NULL;
	zfs_handle_t *pzhp = NULL;
	uint8_t *wkeydata = NULL;
	uint_t wkeylen = 0;
	boolean_t local_crypt = B_TRUE;

	(void) FUNC10(errbuf, sizeof (errbuf),
	    FUNC0(TEXT_DOMAIN, "Encryption create error"));

	/* lookup crypt from props */
	ret = FUNC7(props,
	    FUNC15(ZFS_PROP_ENCRYPTION), &crypt);
	if (ret != 0)
		local_crypt = B_FALSE;

	/* lookup key location and format from props */
	(void) FUNC7(props,
	    FUNC15(ZFS_PROP_KEYFORMAT), &keyformat);
	(void) FUNC6(props,
	    FUNC15(ZFS_PROP_KEYLOCATION), &keylocation);

	if (parent_name != NULL) {
		/* get a reference to parent dataset */
		pzhp = FUNC3(hdl, parent_name);
		if (pzhp == NULL) {
			ret = ENOENT;
			FUNC13(hdl, FUNC0(TEXT_DOMAIN,
			    "Failed to lookup parent."));
			goto out;
		}

		/* Lookup parent's crypt */
		pcrypt = FUNC14(pzhp, ZFS_PROP_ENCRYPTION);

		/* Params require the encryption feature */
		if (!FUNC1(pzhp->zpool_hdl)) {
			if (FUNC9(props)) {
				ret = EINVAL;
				FUNC13(hdl, FUNC0(TEXT_DOMAIN,
				    "Encryption feature not enabled."));
				goto out;
			}

			ret = 0;
			goto out;
		}
	} else {
		/*
		 * special case for root dataset where encryption feature
		 * feature won't be on disk yet
		 */
		if (!FUNC5(pool_props, "feature@encryption")) {
			if (FUNC9(props)) {
				ret = EINVAL;
				FUNC13(hdl, FUNC0(TEXT_DOMAIN,
				    "Encryption feature not enabled."));
				goto out;
			}

			ret = 0;
			goto out;
		}

		pcrypt = ZIO_CRYPT_OFF;
	}

	/* Get the inherited encryption property if we don't have it locally */
	if (!local_crypt)
		crypt = pcrypt;

	/*
	 * At this point crypt should be the actual encryption value. If
	 * encryption is off just verify that no encryption properties have
	 * been specified and return.
	 */
	if (crypt == ZIO_CRYPT_OFF) {
		if (FUNC9(props)) {
			ret = EINVAL;
			FUNC13(hdl, FUNC0(TEXT_DOMAIN,
			    "Encryption must be turned on to set encryption "
			    "properties."));
			goto out;
		}

		ret = 0;
		goto out;
	}

	/*
	 * If we have a parent crypt it is valid to specify encryption alone.
	 * This will result in a child that is encrypted with the chosen
	 * encryption suite that will also inherit the parent's key. If
	 * the parent is not encrypted we need an encryption suite provided.
	 */
	if (pcrypt == ZIO_CRYPT_OFF && keylocation == NULL &&
	    keyformat == ZFS_KEYFORMAT_NONE) {
		ret = EINVAL;
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "Keyformat required for new encryption root."));
		goto out;
	}

	/*
	 * Specifying a keylocation implies this will be a new encryption root.
	 * Check that a keyformat is also specified.
	 */
	if (keylocation != NULL && keyformat == ZFS_KEYFORMAT_NONE) {
		ret = EINVAL;
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "Keyformat required for new encryption root."));
		goto out;
	}

	/* default to prompt if no keylocation is specified */
	if (keyformat != ZFS_KEYFORMAT_NONE && keylocation == NULL) {
		keylocation = "prompt";
		ret = FUNC4(props,
		    FUNC15(ZFS_PROP_KEYLOCATION), keylocation);
		if (ret != 0)
			goto out;
	}

	/*
	 * If a local key is provided, this dataset will be a new
	 * encryption root. Populate the encryption params.
	 */
	if (keylocation != NULL) {
		/*
		 * 'zfs recv -o keylocation=prompt' won't work because stdin
		 * is being used by the send stream, so we disallow it.
		 */
		if (!stdin_available && FUNC11(keylocation, "prompt") == 0) {
			ret = EINVAL;
			FUNC13(hdl, FUNC0(TEXT_DOMAIN, "Cannot use "
			    "'prompt' keylocation because stdin is in use."));
			goto out;
		}

		ret = FUNC8(hdl, NULL,
		    B_FALSE, keyformat, keylocation, props, &wkeydata,
		    &wkeylen);
		if (ret != 0)
			goto out;
	}

	if (pzhp != NULL)
		FUNC12(pzhp);

	*wkeydata_out = wkeydata;
	*wkeylen_out = wkeylen;
	return (0);

out:
	if (pzhp != NULL)
		FUNC12(pzhp);
	if (wkeydata != NULL)
		FUNC2(wkeydata);

	*wkeydata_out = NULL;
	*wkeylen_out = 0;
	return (ret);
}