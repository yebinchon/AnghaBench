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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_isdst; int tm_sec; int tm_gmtoff; scalar_t__ tm_zone; } ;
struct TYPE_3__ {int lt_gmtoff; } ;
typedef  TYPE_1__ iso9660_ltime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  lt_day ; 
 int /*<<< orphan*/  lt_hour ; 
 int /*<<< orphan*/  lt_minute ; 
 int /*<<< orphan*/  lt_month ; 
 int /*<<< orphan*/  lt_second ; 
 int /*<<< orphan*/  lt_year ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,struct tm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tm_hour ; 
 int /*<<< orphan*/  tm_mday ; 
 int /*<<< orphan*/  tm_min ; 
 int /*<<< orphan*/  tm_mon ; 
 int /*<<< orphan*/  tm_sec ; 
 int /*<<< orphan*/  tm_year ; 

bool
FUNC5 (const iso9660_ltime_t *p_ldate,
                   /*out*/ struct tm *p_tm)
{
  if (!p_tm) return false;
  FUNC2(p_tm, 0, sizeof(struct tm));
  FUNC4(tm_year, lt_year,  -1900);
  FUNC4(tm_mon,  lt_month, -1);
  FUNC4(tm_mday, lt_day,    0);
  FUNC4(tm_hour, lt_hour,   0);
  FUNC4(tm_min,  lt_minute, 0);
  FUNC4(tm_sec,  lt_second, 0);
  p_tm->tm_isdst= -1; /* information not available */
#ifndef HAVE_TM_GMTOFF
  p_tm->tm_sec += p_ldate->lt_gmtoff * (15 * 60);
#endif
#ifdef HAVE_STRUCT_TM_TM_ZONE
  /* Initialize everything */
  p_tm->tm_zone = 0;
#endif

  /* Recompute tm_wday and tm_yday via mktime. mktime will also renormalize
     date values to account for the timezone offset. */
  {
    time_t t;
    struct tm temp_tm;

    t = FUNC3(p_tm);

    FUNC0(&t, &temp_tm);

    FUNC1(p_tm, &temp_tm, sizeof(struct tm));
  }
  p_tm->tm_isdst= -1; /* information not available */
#ifdef HAVE_TM_GMTOFF
  p_tm->tm_gmtoff = -p_ldate->lt_gmtoff * (15 * 60);
#endif
  return true;
}