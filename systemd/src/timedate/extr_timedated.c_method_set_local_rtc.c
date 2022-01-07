
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct tm {int dummy; } ;
struct timespec {int tv_sec; } ;
struct TYPE_10__ {int local_rtc; int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Context ;


 int CAP_SYS_TIME ;
 int CLOCK_REALTIME ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int clock_get_hwclock (struct tm*) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int clock_set_hwclock (struct tm*) ;
 int clock_set_timezone (int *) ;
 scalar_t__ clock_settime (int ,struct timespec*) ;
 int context_write_data_local_rtc (TYPE_1__*) ;
 int errno ;
 int gmtime_r (int *,struct tm*) ;
 int localtime_r (int *,struct tm*) ;
 int log_debug_errno (int,char*) ;
 int log_error_errno (int,char*,char*) ;
 int log_info (char*,char*) ;
 int mktime (struct tm*) ;
 int sd_bus_emit_properties_changed (int ,char*,char*,char*,int *) ;
 int sd_bus_error_set_errnof (int *,int,char*,char*) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,int*,int*,int*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int timegm (struct tm*) ;

__attribute__((used)) static int method_set_local_rtc(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        int lrtc, fix_system, interactive;
        Context *c = userdata;
        struct timespec ts;
        int r;

        assert(m);
        assert(c);

        r = sd_bus_message_read(m, "bbb", &lrtc, &fix_system, &interactive);
        if (r < 0)
                return r;

        if (lrtc == c->local_rtc)
                return sd_bus_reply_method_return(m, ((void*)0));

        r = bus_verify_polkit_async(
                        m,
                        CAP_SYS_TIME,
                        "org.freedesktop.timedate1.set-local-rtc",
                        ((void*)0),
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        c->local_rtc = lrtc;


        r = context_write_data_local_rtc(c);
        if (r < 0) {
                log_error_errno(r, "Failed to set RTC to %s: %m", lrtc ? "local" : "UTC");
                return sd_bus_error_set_errnof(error, r, "Failed to set RTC to %s: %m", lrtc ? "local" : "UTC");
        }


        r = clock_set_timezone(((void*)0));
        if (r < 0)
                log_debug_errno(r, "Failed to tell kernel about timezone, ignoring: %m");


        assert_se(clock_gettime(CLOCK_REALTIME, &ts) == 0);

        if (fix_system) {
                struct tm tm;


                if (c->local_rtc)
                        localtime_r(&ts.tv_sec, &tm);
                else
                        gmtime_r(&ts.tv_sec, &tm);


                r = clock_get_hwclock(&tm);
                if (r < 0)
                        log_debug_errno(r, "Failed to get hardware clock, ignoring: %m");
                else {

                        if (c->local_rtc)
                                ts.tv_sec = mktime(&tm);
                        else
                                ts.tv_sec = timegm(&tm);

                        if (clock_settime(CLOCK_REALTIME, &ts) < 0)
                                log_debug_errno(errno, "Failed to update system clock, ignoring: %m");
                }

        } else {
                struct tm tm;


                if (c->local_rtc)
                        localtime_r(&ts.tv_sec, &tm);
                else
                        gmtime_r(&ts.tv_sec, &tm);

                r = clock_set_hwclock(&tm);
                if (r < 0)
                        log_debug_errno(r, "Failed to sync time to hardware clock, ignoring: %m");
        }

        log_info("RTC configured to %s time.", c->local_rtc ? "local" : "UTC");

        (void) sd_bus_emit_properties_changed(sd_bus_message_get_bus(m),
                                              "/org/freedesktop/timedate1", "org.freedesktop.timedate1", "LocalRTC",
                                              ((void*)0));

        return sd_bus_reply_method_return(m, ((void*)0));
}
