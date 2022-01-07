
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_3__ {int timer_event; int daemon; } ;
typedef int MHD_UNSIGNED_LONG_LONG ;
typedef TYPE_1__ MHDDaemonWrapper ;


 int EINVAL ;
 int MHD_NO ;
 int MHD_get_timeout (int ,int *) ;
 int MHD_run (int ) ;
 int SD_EVENT_ON ;
 int SYNTHETIC_ERRNO (int ) ;
 int ULLONG_MAX ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int ,char*) ;
 int log_warning_errno (int,char*) ;
 int sd_event_source_set_enabled (int ,int ) ;
 int sd_event_source_set_time (int ,int ) ;

__attribute__((used)) static int dispatch_http_event(sd_event_source *event,
                               int fd,
                               uint32_t revents,
                               void *userdata) {
        MHDDaemonWrapper *d = userdata;
        int r;
        MHD_UNSIGNED_LONG_LONG timeout = ULLONG_MAX;

        assert(d);

        r = MHD_run(d->daemon);
        if (r == MHD_NO)

                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "MHD_run failed!");
        if (MHD_get_timeout(d->daemon, &timeout) == MHD_NO)
                timeout = ULLONG_MAX;

        r = sd_event_source_set_time(d->timer_event, timeout);
        if (r < 0) {
                log_warning_errno(r, "Unable to set event loop timeout: %m, this may result in indefinite blocking!");
                return 1;
        }

        r = sd_event_source_set_enabled(d->timer_event, SD_EVENT_ON);
        if (r < 0)
                log_warning_errno(r, "Unable to enable timer_event: %m, this may result in indefinite blocking!");

        return 1;
}
