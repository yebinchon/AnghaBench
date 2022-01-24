#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct tm {int dummy; } ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int local_rtc; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_TIME ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tm*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC5 (struct tm*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct tm*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*,char*,int*,int*,int*) ; 
 int FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct tm*) ; 

__attribute__((used)) static int FUNC21(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        int lrtc, fix_system, interactive;
        Context *c = userdata;
        struct timespec ts;
        int r;

        FUNC0(m);
        FUNC0(c);

        r = FUNC18(m, "bbb", &lrtc, &fix_system, &interactive);
        if (r < 0)
                return r;

        if (lrtc == c->local_rtc)
                return FUNC19(m, NULL);

        r = FUNC2(
                        m,
                        CAP_SYS_TIME,
                        "org.freedesktop.timedate1.set-local-rtc",
                        NULL,
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        c->local_rtc = lrtc;

        /* 1. Write new configuration file */
        r = FUNC8(c);
        if (r < 0) {
                FUNC12(r, "Failed to set RTC to %s: %m", lrtc ? "local" : "UTC");
                return FUNC16(error, r, "Failed to set RTC to %s: %m", lrtc ? "local" : "UTC");
        }

        /* 2. Tell the kernel our timezone */
        r = FUNC6(NULL);
        if (r < 0)
                FUNC11(r, "Failed to tell kernel about timezone, ignoring: %m");

        /* 3. Synchronize clocks */
        FUNC1(FUNC4(CLOCK_REALTIME, &ts) == 0);

        if (fix_system) {
                struct tm tm;

                /* Sync system clock from RTC; first, initialize the timezone fields of struct tm. */
                if (c->local_rtc)
                        FUNC10(&ts.tv_sec, &tm);
                else
                        FUNC9(&ts.tv_sec, &tm);

                /* Override the main fields of struct tm, but not the timezone fields */
                r = FUNC3(&tm);
                if (r < 0)
                        FUNC11(r, "Failed to get hardware clock, ignoring: %m");
                else {
                        /* And set the system clock with this */
                        if (c->local_rtc)
                                ts.tv_sec = FUNC14(&tm);
                        else
                                ts.tv_sec = FUNC20(&tm);

                        if (FUNC7(CLOCK_REALTIME, &ts) < 0)
                                FUNC11(errno, "Failed to update system clock, ignoring: %m");
                }

        } else {
                struct tm tm;

                /* Sync RTC from system clock */
                if (c->local_rtc)
                        FUNC10(&ts.tv_sec, &tm);
                else
                        FUNC9(&ts.tv_sec, &tm);

                r = FUNC5(&tm);
                if (r < 0)
                        FUNC11(r, "Failed to sync time to hardware clock, ignoring: %m");
        }

        FUNC13("RTC configured to %s time.", c->local_rtc ? "local" : "UTC");

        (void) FUNC15(FUNC17(m),
                                              "/org/freedesktop/timedate1", "org.freedesktop.timedate1", "LocalRTC",
                                              NULL);

        return FUNC19(m, NULL);
}