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
struct tm {int tm_gmtoff; scalar_t__ tm_isdst; } ;
typedef  int /*<<< orphan*/  iso9660_ltime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm const*,int,int /*<<< orphan*/ *) ; 

void
FUNC1(const struct tm *p_tm, /*out*/ iso9660_ltime_t *pvd_date)
{
  int time_zone = 0;
  if (p_tm) {
#ifdef HAVE_TM_GMTOFF
    /* Set time zone in 15-minute interval encoding. */
    time_zone = p_tm->tm_gmtoff / 60;
#else
    time_zone = (p_tm->tm_isdst > 0) ? -60 : 0;
#endif
  }
  FUNC0 (p_tm, time_zone, pvd_date);
}