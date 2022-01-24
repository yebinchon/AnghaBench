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
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_1__* os_phys; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ ZFS_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  ZFS_ERR_WRONG_PARENT ; 
 int /*<<< orphan*/  ZFS_PROP_CASE ; 
 int /*<<< orphan*/  ZFS_PROP_NORMALIZE ; 
 scalar_t__ ZFS_PROP_UNDEFINED ; 
 int /*<<< orphan*/  ZFS_PROP_UTF8ONLY ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 scalar_t__ ZPL_VERSION ; 
 scalar_t__ ZPL_VERSION_FUID ; 
 scalar_t__ ZPL_VERSION_INITIAL ; 
 scalar_t__ ZPL_VERSION_NORMALIZATION ; 
 scalar_t__ ZPL_VERSION_SA ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(objset_t *os, uint64_t zplver,
    boolean_t fuids_ok, boolean_t sa_ok, nvlist_t *createprops,
    nvlist_t *zplprops, boolean_t *is_ci)
{
	uint64_t sense = ZFS_PROP_UNDEFINED;
	uint64_t norm = ZFS_PROP_UNDEFINED;
	uint64_t u8 = ZFS_PROP_UNDEFINED;
	int error;

	FUNC0(zplprops != NULL);

	/* parent dataset must be a filesystem */
	if (os != NULL && os->os_phys->os_type != DMU_OST_ZFS)
		return (FUNC1(ZFS_ERR_WRONG_PARENT));

	/*
	 * Pull out creator prop choices, if any.
	 */
	if (createprops) {
		(void) FUNC4(createprops,
		    FUNC7(ZFS_PROP_VERSION), &zplver);
		(void) FUNC4(createprops,
		    FUNC7(ZFS_PROP_NORMALIZE), &norm);
		(void) FUNC5(createprops,
		    FUNC7(ZFS_PROP_NORMALIZE));
		(void) FUNC4(createprops,
		    FUNC7(ZFS_PROP_UTF8ONLY), &u8);
		(void) FUNC5(createprops,
		    FUNC7(ZFS_PROP_UTF8ONLY));
		(void) FUNC4(createprops,
		    FUNC7(ZFS_PROP_CASE), &sense);
		(void) FUNC5(createprops,
		    FUNC7(ZFS_PROP_CASE));
	}

	/*
	 * If the zpl version requested is whacky or the file system
	 * or pool is version is too "young" to support normalization
	 * and the creator tried to set a value for one of the props,
	 * error out.
	 */
	if ((zplver < ZPL_VERSION_INITIAL || zplver > ZPL_VERSION) ||
	    (zplver >= ZPL_VERSION_FUID && !fuids_ok) ||
	    (zplver >= ZPL_VERSION_SA && !sa_ok) ||
	    (zplver < ZPL_VERSION_NORMALIZATION &&
	    (norm != ZFS_PROP_UNDEFINED || u8 != ZFS_PROP_UNDEFINED ||
	    sense != ZFS_PROP_UNDEFINED)))
		return (FUNC1(ENOTSUP));

	/*
	 * Put the version in the zplprops
	 */
	FUNC2(FUNC3(zplprops,
	    FUNC7(ZFS_PROP_VERSION), zplver) == 0);

	if (norm == ZFS_PROP_UNDEFINED &&
	    (error = FUNC6(os, ZFS_PROP_NORMALIZE, &norm)) != 0)
		return (error);
	FUNC2(FUNC3(zplprops,
	    FUNC7(ZFS_PROP_NORMALIZE), norm) == 0);

	/*
	 * If we're normalizing, names must always be valid UTF-8 strings.
	 */
	if (norm)
		u8 = 1;
	if (u8 == ZFS_PROP_UNDEFINED &&
	    (error = FUNC6(os, ZFS_PROP_UTF8ONLY, &u8)) != 0)
		return (error);
	FUNC2(FUNC3(zplprops,
	    FUNC7(ZFS_PROP_UTF8ONLY), u8) == 0);

	if (sense == ZFS_PROP_UNDEFINED &&
	    (error = FUNC6(os, ZFS_PROP_CASE, &sense)) != 0)
		return (error);
	FUNC2(FUNC3(zplprops,
	    FUNC7(ZFS_PROP_CASE), sense) == 0);

	if (is_ci)
		*is_ci = (sense == ZFS_CASE_INSENSITIVE);

	return (0);
}