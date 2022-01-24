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
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {char* timezone; int time; int rtc_time; scalar_t__ rtc_local; scalar_t__ ntp_active; scalar_t__ ntp_capable; scalar_t__ ntp_synced; } ;
typedef  TYPE_1__ StatusInfo ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_TRANSPORT_LOCAL ; 
 int /*<<< orphan*/  BUS_TRANSPORT_MACHINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LINE_MAX ; 
 int USEC_PER_SEC ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  arg_transport ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,struct tm*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int FUNC11 (char*,char const*,int) ; 
 char* FUNC12 (char const*) ; 
 size_t FUNC13 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,char*) ; 
 char* FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (char*) ; 
 char* FUNC19 (scalar_t__) ; 

__attribute__((used)) static void FUNC20(const StatusInfo *i) {
        const char *old_tz = NULL, *tz, *tz_colon;
        bool have_time = false;
        char a[LINE_MAX];
        struct tm tm;
        time_t sec;
        size_t n;
        int r;

        FUNC3(i);

        /* Save the old $TZ */
        tz = FUNC4("TZ");
        if (tz)
                old_tz = FUNC12(tz);

        /* Set the new $TZ */
        tz_colon = FUNC14(":", FUNC6(i->timezone) ? "UTC" : i->timezone);
        if (FUNC11("TZ", tz_colon, true) < 0)
                FUNC9(errno, "Failed to set TZ environment variable, ignoring: %m");
        else
                FUNC17();

        if (i->time != 0) {
                sec = (time_t) (i->time / USEC_PER_SEC);
                have_time = true;
        } else if (FUNC0(arg_transport, BUS_TRANSPORT_LOCAL, BUS_TRANSPORT_MACHINE)) {
                sec = FUNC16(NULL);
                have_time = true;
        } else
                FUNC8("Could not get time from timedated and not operating locally, ignoring.");

        if (have_time) {
                n = FUNC13(a, sizeof a, "%a %Y-%m-%d %H:%M:%S %Z", FUNC7(&sec, &tm));
                FUNC10("               Local time: %s\n", n > 0 ? a : "n/a");

                n = FUNC13(a, sizeof a, "%a %Y-%m-%d %H:%M:%S UTC", FUNC5(&sec, &tm));
                FUNC10("           Universal time: %s\n", n > 0 ? a : "n/a");
        } else {
                FUNC10("               Local time: %s\n", "n/a");
                FUNC10("           Universal time: %s\n", "n/a");
        }

        if (i->rtc_time > 0) {
                time_t rtc_sec;

                rtc_sec = (time_t) (i->rtc_time / USEC_PER_SEC);
                n = FUNC13(a, sizeof a, "%a %Y-%m-%d %H:%M:%S", FUNC5(&rtc_sec, &tm));
                FUNC10("                 RTC time: %s\n", n > 0 ? a : "n/a");
        } else
                FUNC10("                 RTC time: %s\n", "n/a");

        if (have_time)
                n = FUNC13(a, sizeof a, "%Z, %z", FUNC7(&sec, &tm));

        /* Restore the $TZ */
        if (old_tz)
                r = FUNC11("TZ", old_tz, true);
        else
                r = FUNC18("TZ");
        if (r < 0)
                FUNC9(errno, "Failed to set TZ environment variable, ignoring: %m");
        else
                FUNC17();

        FUNC10("                Time zone: %s (%s)\n"
               "System clock synchronized: %s\n"
               "              NTP service: %s\n"
               "          RTC in local TZ: %s\n",
               FUNC15(i->timezone), have_time && n > 0 ? a : "n/a",
               FUNC19(i->ntp_synced),
               i->ntp_capable ? (i->ntp_active ? "active" : "inactive") : "n/a",
               FUNC19(i->rtc_local));

        if (i->rtc_local)
                FUNC10("\n%s"
                       "Warning: The system is configured to read the RTC time in the local time zone.\n"
                       "         This mode cannot be fully supported. It will create various problems\n"
                       "         with time zone changes and daylight saving time adjustments. The RTC\n"
                       "         time is never updated, it relies on external facilities to maintain it.\n"
                       "         If at all possible, use RTC in UTC by calling\n"
                       "         'timedatectl set-local-rtc 0'.%s\n", FUNC1(), FUNC2());
}