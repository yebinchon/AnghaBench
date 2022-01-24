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
typedef  int /*<<< orphan*/  zbuf ;
struct TYPE_3__ {int vs_trim_state; int vs_trim_bytes_done; int vs_trim_bytes_est; scalar_t__ vs_trim_notsup; int /*<<< orphan*/  vs_trim_action_time; int /*<<< orphan*/  vs_scan_removing; } ;
typedef  TYPE_1__ vdev_stat_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  tbuf ;
struct tm {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
#define  VDEV_TRIM_ACTIVE 130 
#define  VDEV_TRIM_COMPLETE 129 
#define  VDEV_TRIM_SUSPENDED 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static void
FUNC5(vdev_stat_t *vs, boolean_t verbose)
{
	if (verbose) {
		if ((vs->vs_trim_state == VDEV_TRIM_ACTIVE ||
		    vs->vs_trim_state == VDEV_TRIM_SUSPENDED ||
		    vs->vs_trim_state == VDEV_TRIM_COMPLETE) &&
		    !vs->vs_scan_removing) {
			char zbuf[1024];
			char tbuf[256];
			struct tm zaction_ts;

			time_t t = vs->vs_trim_action_time;
			int trim_pct = 100;
			if (vs->vs_trim_state != VDEV_TRIM_COMPLETE) {
				trim_pct = (vs->vs_trim_bytes_done *
				    100 / (vs->vs_trim_bytes_est + 1));
			}

			(void) FUNC1(&t, &zaction_ts);
			(void) FUNC4(tbuf, sizeof (tbuf), "%c", &zaction_ts);

			switch (vs->vs_trim_state) {
			case VDEV_TRIM_SUSPENDED:
				(void) FUNC3(zbuf, sizeof (zbuf), ", %s %s",
				    FUNC0("suspended, started at"), tbuf);
				break;
			case VDEV_TRIM_ACTIVE:
				(void) FUNC3(zbuf, sizeof (zbuf), ", %s %s",
				    FUNC0("started at"), tbuf);
				break;
			case VDEV_TRIM_COMPLETE:
				(void) FUNC3(zbuf, sizeof (zbuf), ", %s %s",
				    FUNC0("completed at"), tbuf);
				break;
			}

			(void) FUNC2(FUNC0("  (%d%% trimmed%s)"),
			    trim_pct, zbuf);
		} else if (vs->vs_trim_notsup) {
			(void) FUNC2(FUNC0("  (trim unsupported)"));
		} else {
			(void) FUNC2(FUNC0("  (untrimmed)"));
		}
	} else if (vs->vs_trim_state == VDEV_TRIM_ACTIVE) {
		(void) FUNC2(FUNC0("  (trimming)"));
	}
}