#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* member_0; scalar_t__ zc_obj; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_11__ {scalar_t__ ddr_first; scalar_t__ ddr_last; } ;
typedef  TYPE_3__ dmu_diff_record_t ;
struct TYPE_12__ {scalar_t__ zerr; scalar_t__ shares; int /*<<< orphan*/  errbuf; int /*<<< orphan*/  fromsnap; TYPE_1__* zhp; } ;
typedef  TYPE_4__ differ_info_t ;
struct TYPE_9__ {int /*<<< orphan*/ * zfs_hdl; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ESRCH ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_NEXT_OBJ ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,scalar_t__,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(FILE *fp, differ_info_t *di, dmu_diff_record_t *dr)
{
	zfs_cmd_t zc = {"\0"};
	libzfs_handle_t *lhdl = di->zhp->zfs_hdl;
	char fobjname[MAXPATHLEN];

	(void) FUNC4(zc.zc_name, di->fromsnap, sizeof (zc.zc_name));
	zc.zc_obj = dr->ddr_first - 1;

	FUNC0(di->zerr == 0);

	while (zc.zc_obj < dr->ddr_last) {
		int err;

		err = FUNC5(lhdl, ZFS_IOC_NEXT_OBJ, &zc);
		if (err == 0) {
			if (zc.zc_obj == di->shares) {
				zc.zc_obj++;
				continue;
			}
			if (zc.zc_obj > dr->ddr_last) {
				break;
			}
			err = FUNC1(fp, di, zc.zc_obj, fobjname,
			    MAXPATHLEN);
			if (err)
				break;
		} else if (errno == ESRCH) {
			break;
		} else {
			(void) FUNC3(di->errbuf, sizeof (di->errbuf),
			    FUNC2(TEXT_DOMAIN,
			    "next allocated object (> %lld) find failure"),
			    (longlong_t)zc.zc_obj);
			di->zerr = errno;
			break;
		}
	}
	if (di->zerr)
		return (-1);
	return (0);
}