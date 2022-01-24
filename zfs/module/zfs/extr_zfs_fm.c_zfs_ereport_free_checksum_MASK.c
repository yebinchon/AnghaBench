#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* zcr_ckinfo; int /*<<< orphan*/  zcr_cbinfo; int /*<<< orphan*/  zcr_cbdata; int /*<<< orphan*/  (* zcr_free ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * zcr_detector; int /*<<< orphan*/ * zcr_ereport; } ;
typedef  TYPE_1__ zio_cksum_report_t ;

/* Variables and functions */
 int /*<<< orphan*/  FM_NVA_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(zio_cksum_report_t *rpt)
{
#ifdef _KERNEL
	if (rpt->zcr_ereport != NULL) {
		fm_nvlist_destroy(rpt->zcr_ereport,
		    FM_NVA_FREE);
		fm_nvlist_destroy(rpt->zcr_detector,
		    FM_NVA_FREE);
	}
#endif
	rpt->zcr_free(rpt->zcr_cbdata, rpt->zcr_cbinfo);

	if (rpt->zcr_ckinfo != NULL)
		FUNC1(rpt->zcr_ckinfo, sizeof (*rpt->zcr_ckinfo));

	FUNC1(rpt, sizeof (*rpt));
}