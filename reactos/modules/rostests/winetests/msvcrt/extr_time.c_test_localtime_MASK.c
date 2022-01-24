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
typedef  scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_yday; int tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; scalar_t__ tm_isdst; int /*<<< orphan*/  tm_wday; } ;
struct TYPE_3__ {int Bias; int DaylightBias; int StandardBias; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int SECSPERDAY ; 
 int SECSPERMIN ; 
 scalar_t__ TIME_ZONE_ID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int FUNC2 (scalar_t__*) ; 
 char* FUNC3 (char*) ; 
 struct tm* FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    TIME_ZONE_INFORMATION tzinfo;
    DWORD res =  FUNC0(&tzinfo);
    time_t gmt, ref;

    char TZ_env[256];
    struct tm* lt;
    int year = FUNC2( &ref );
    int is_leap = !(year % 4) && ((year % 100) || !((year + 300) % 400));

    gmt = ref + SECSPERDAY + tzinfo.Bias * SECSPERMIN;
    FUNC5 (res != TIME_ZONE_ID_INVALID, "GetTimeZoneInformation failed\n");
    lt = FUNC4(&gmt);
    gmt += (lt->tm_isdst ? tzinfo.DaylightBias : tzinfo.StandardBias) * SECSPERMIN;
    lt = FUNC4(&gmt);
    FUNC5(((lt->tm_year == year) && (lt->tm_mon  == 0) && (lt->tm_yday  == 1) &&
	(lt->tm_mday ==  2) && (lt->tm_hour  == 0) &&
	(lt->tm_min  ==  0) && (lt->tm_sec  == 0)),
       "Wrong date:Year %d mon %d yday %d mday %d wday %d hour %d min %d sec %d dst %d\n",
       lt->tm_year, lt->tm_mon, lt->tm_yday, lt->tm_mday, lt->tm_wday, lt->tm_hour, 
       lt->tm_min, lt->tm_sec, lt->tm_isdst); 

    FUNC1(TZ_env,255,"TZ=%s",(FUNC3("TZ")?FUNC3("TZ"):""));
    FUNC6("TZ=GMT");
    lt = FUNC4(&gmt);
    FUNC5(((lt->tm_year == year) && (lt->tm_mon  == 0) && (lt->tm_yday  == 1) &&
	(lt->tm_mday ==  2) && (lt->tm_hour  == 0) &&
	(lt->tm_min  ==  0) && (lt->tm_sec  == 0)),
       "Wrong date:Year %d mon %d yday %d mday %d wday %d hour %d min %d sec %d dst %d\n",
       lt->tm_year, lt->tm_mon, lt->tm_yday, lt->tm_mday, lt->tm_wday, lt->tm_hour, 
       lt->tm_min, lt->tm_sec, lt->tm_isdst); 
    FUNC6(TZ_env);

    /* June 22 */
    gmt = ref + 202 * SECSPERDAY + tzinfo.Bias * SECSPERMIN;
    lt = FUNC4(&gmt);
    gmt += (lt->tm_isdst ? tzinfo.DaylightBias : tzinfo.StandardBias) * SECSPERMIN;
    lt = FUNC4(&gmt);
    FUNC5(((lt->tm_year == year) && (lt->tm_mon  == 6) && (lt->tm_yday  == 202) &&
	(lt->tm_mday == 22 - is_leap) && (lt->tm_hour  == 0) &&
	(lt->tm_min  ==  0) && (lt->tm_sec  == 0)),
       "Wrong date:Year %d mon %d yday %d mday %d wday %d hour %d min %d sec %d dst %d\n",
       lt->tm_year, lt->tm_mon, lt->tm_yday, lt->tm_mday, lt->tm_wday, lt->tm_hour, 
       lt->tm_min, lt->tm_sec, lt->tm_isdst); 
}