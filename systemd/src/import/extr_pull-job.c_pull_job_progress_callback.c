
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int y ;
typedef scalar_t__ usec_t ;
typedef int uint64_t ;
typedef scalar_t__ curl_off_t ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ last_status_usec; unsigned int progress_percent; scalar_t__ start_usec; int (* on_progress ) (TYPE_1__*) ;int url; } ;
typedef TYPE_1__ PullJob ;


 int CLOCK_MONOTONIC ;
 int FORMAT_BYTES_MAX ;
 int FORMAT_TIMESPAN_MAX ;
 scalar_t__ USEC_PER_SEC ;
 int assert (TYPE_1__*) ;
 int format_bytes (char*,int,int ) ;
 int format_timespan (char*,int,scalar_t__,scalar_t__) ;
 int log_info (char*,unsigned int,int ,...) ;
 scalar_t__ now (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int pull_job_progress_callback(void *userdata, curl_off_t dltotal, curl_off_t dlnow, curl_off_t ultotal, curl_off_t ulnow) {
        PullJob *j = userdata;
        unsigned percent;
        usec_t n;

        assert(j);

        if (dltotal <= 0)
                return 0;

        percent = ((100 * dlnow) / dltotal);
        n = now(CLOCK_MONOTONIC);

        if (n > j->last_status_usec + USEC_PER_SEC &&
            percent != j->progress_percent &&
            dlnow < dltotal) {
                char buf[FORMAT_TIMESPAN_MAX];

                if (n - j->start_usec > USEC_PER_SEC && dlnow > 0) {
                        char y[FORMAT_BYTES_MAX];
                        usec_t left, done;

                        done = n - j->start_usec;
                        left = (usec_t) (((double) done * (double) dltotal) / dlnow) - done;

                        log_info("Got %u%% of %s. %s left at %s/s.",
                                 percent,
                                 j->url,
                                 format_timespan(buf, sizeof(buf), left, USEC_PER_SEC),
                                 format_bytes(y, sizeof(y), (uint64_t) ((double) dlnow / ((double) done / (double) USEC_PER_SEC))));
                } else
                        log_info("Got %u%% of %s.", percent, j->url);

                j->progress_percent = percent;
                j->last_status_usec = n;

                if (j->on_progress)
                        j->on_progress(j);
        }

        return 0;
}
