#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_11__ {scalar_t__ dd_crypto_obj; TYPE_5__* dd_pool; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_12__ {scalar_t__ ds_object; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_13__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_CRYPTO_KEY_GUID ; 
 int /*<<< orphan*/  DS_FIELD_IVSET_GUID ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION_ROOT ; 
 int /*<<< orphan*/  ZFS_PROP_IVSET_GUID ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int /*<<< orphan*/  ZFS_PROP_KEY_GUID ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_SALT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(dsl_dataset_t *ds, nvlist_t *nv)
{
	uint64_t intval;
	dsl_dir_t *dd = ds->ds_dir;
	dsl_dir_t *enc_root;
	char buf[ZFS_MAX_DATASET_NAME_LEN];

	if (dd->dd_crypto_obj == 0)
		return;

	intval = FUNC0(dd);
	FUNC7(nv, ZFS_PROP_KEYSTATUS, intval);

	if (FUNC1(dd, &intval) == 0)
		FUNC7(nv, ZFS_PROP_ENCRYPTION, intval);
	if (FUNC8(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
	    DSL_CRYPTO_KEY_GUID, 8, 1, &intval) == 0) {
		FUNC7(nv, ZFS_PROP_KEY_GUID, intval);
	}
	if (FUNC8(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
	    FUNC9(ZFS_PROP_KEYFORMAT), 8, 1, &intval) == 0) {
		FUNC7(nv, ZFS_PROP_KEYFORMAT, intval);
	}
	if (FUNC8(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
	    FUNC9(ZFS_PROP_PBKDF2_SALT), 8, 1, &intval) == 0) {
		FUNC7(nv, ZFS_PROP_PBKDF2_SALT, intval);
	}
	if (FUNC8(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
	    FUNC9(ZFS_PROP_PBKDF2_ITERS), 8, 1, &intval) == 0) {
		FUNC7(nv, ZFS_PROP_PBKDF2_ITERS, intval);
	}
	if (FUNC8(dd->dd_pool->dp_meta_objset, ds->ds_object,
	    DS_FIELD_IVSET_GUID, 8, 1, &intval) == 0) {
		FUNC7(nv, ZFS_PROP_IVSET_GUID, intval);
	}

	if (FUNC2(dd, &intval) == 0) {
		if (FUNC3(dd->dd_pool, intval, NULL, FTAG,
		    &enc_root) == 0) {
			FUNC4(enc_root, buf);
			FUNC5(enc_root, FTAG);
			FUNC6(nv,
			    ZFS_PROP_ENCRYPTION_ROOT, buf);
		}
	}
}