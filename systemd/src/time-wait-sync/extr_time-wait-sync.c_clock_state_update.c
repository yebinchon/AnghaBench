
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_7__ {int tv_usec; } ;
struct timex {int status; TYPE_2__ time; } ;
typedef int sd_event ;
typedef int buf ;
struct TYPE_6__ {int timerfd_fd; int adjtime_state; int has_watchfile; int timerfd_event_source; } ;
typedef TYPE_1__ ClockState ;


 int EPOLLIN ;
 int FORMAT_TIMESTAMP_MAX ;
 int F_OK ;
 int MAX (size_t,int ) ;
 int STA_NANO ;
 int STRLEN (char*) ;
 int TIME_ERROR ;
 scalar_t__ access (char*,int ) ;
 int adjtimex (struct timex*) ;
 int clock_state_release_timerfd (TYPE_1__*) ;
 int errno ;
 char* format_timestamp_us_utc (char*,int,int ) ;
 int log_error_errno (int,char*) ;
 int log_info (char*,int,int,char const*) ;
 int sd_event_add_io (int *,int *,int,int ,int ,TYPE_1__*) ;
 int sd_event_exit (int *,int) ;
 int strcpy (char*,char*) ;
 int time_change_fd () ;
 int timerfd_handler ;
 int timeval_load (TYPE_2__*) ;

__attribute__((used)) static int clock_state_update(
                ClockState *sp,
                sd_event *event) {

        char buf[MAX((size_t)FORMAT_TIMESTAMP_MAX, STRLEN("unrepresentable"))];
        struct timex tx = {};
        const char * ts;
        usec_t t;
        int r;

        clock_state_release_timerfd(sp);
        r = time_change_fd();
        if (r < 0) {
                log_error_errno(r, "Failed to create timerfd: %m");
                goto finish;
        }
        sp->timerfd_fd = r;

        r = adjtimex(&tx);
        if (r < 0) {
                log_error_errno(errno, "Failed to read adjtimex state: %m");
                goto finish;
        }
        sp->adjtime_state = r;

        if (tx.status & STA_NANO)
                tx.time.tv_usec /= 1000;
        t = timeval_load(&tx.time);
        ts = format_timestamp_us_utc(buf, sizeof(buf), t);
        if (!ts)
                strcpy(buf, "unrepresentable");
        log_info("adjtime state %d status %x time %s", sp->adjtime_state, tx.status, ts);

        sp->has_watchfile = access("/run/systemd/timesync/synchronized", F_OK) >= 0;
        if (sp->has_watchfile)

                r = 0;
        else if (sp->adjtime_state == TIME_ERROR) {


                r = sd_event_add_io(event, &sp->timerfd_event_source, sp->timerfd_fd,
                                    EPOLLIN, timerfd_handler, sp);
                if (r < 0) {
                        log_error_errno(r, "Failed to create time change monitor source: %m");
                        goto finish;
                }
                r = 1;
        } else

                r = 0;

 finish:
        if (r <= 0)
                (void) sd_event_exit(event, r);
        return r;
}
