#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {int /*<<< orphan*/  ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ fmri_set_failed; } ;

/* Variables and functions */
 int DEV_SCHEME_VERSION0 ; 
 int /*<<< orphan*/  FM_FMRI_AUTHORITY ; 
 int /*<<< orphan*/  FM_FMRI_DEV_ID ; 
 int /*<<< orphan*/  FM_FMRI_DEV_PATH ; 
 int /*<<< orphan*/  FM_FMRI_DEV_TGTPTLUN0 ; 
 int /*<<< orphan*/  FM_FMRI_SCHEME ; 
 char const* FM_FMRI_SCHEME_DEV ; 
 int /*<<< orphan*/  FM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ erpt_kstat_data ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC4(nvlist_t *fmri_dev, int version, const nvlist_t *auth,
    const char *devpath, const char *devid, const char *tpl0)
{
	int err = 0;

	if (version != DEV_SCHEME_VERSION0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	err |= FUNC3(fmri_dev, FM_VERSION, version);
	err |= FUNC2(fmri_dev, FM_FMRI_SCHEME, FM_FMRI_SCHEME_DEV);

	if (auth != NULL) {
		err |= FUNC1(fmri_dev, FM_FMRI_AUTHORITY,
		    (nvlist_t *)auth);
	}

	err |= FUNC2(fmri_dev, FM_FMRI_DEV_PATH, devpath);

	if (devid != NULL)
		err |= FUNC2(fmri_dev, FM_FMRI_DEV_ID, devid);

	if (tpl0 != NULL)
		err |= FUNC2(fmri_dev, FM_FMRI_DEV_TGTPTLUN0, tpl0);

	if (err)
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);

}