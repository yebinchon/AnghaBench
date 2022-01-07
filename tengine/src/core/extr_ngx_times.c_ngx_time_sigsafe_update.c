
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_7__ {int ngx_tm_mon; int ngx_tm_sec; int ngx_tm_min; int ngx_tm_hour; int ngx_tm_mday; int ngx_tm_year; } ;
typedef TYPE_1__ ngx_tm_t ;
struct TYPE_8__ {scalar_t__ sec; } ;
typedef TYPE_2__ ngx_time_t ;
struct TYPE_10__ {int * data; } ;
struct TYPE_9__ {int * data; } ;


 int NGX_TIME_SLOTS ;
 int ** cached_err_log_time ;
 int cached_gmtoff ;
 int ** cached_syslog_time ;
 TYPE_2__* cached_time ;
 int * months ;
 TYPE_5__ ngx_cached_err_log_time ;
 TYPE_4__ ngx_cached_syslog_time ;
 int ngx_gettimeofday (struct timeval*) ;
 int ngx_gmtime (scalar_t__,TYPE_1__*) ;
 int ngx_memory_barrier () ;
 int ngx_sprintf (int *,char*,int ,int,int ,int ,int ,...) ;
 int ngx_time_lock ;
 int ngx_trylock (int *) ;
 int ngx_unlock (int *) ;
 size_t slot ;

void
ngx_time_sigsafe_update(void)
{
    u_char *p, *p2;
    ngx_tm_t tm;
    time_t sec;
    ngx_time_t *tp;
    struct timeval tv;

    if (!ngx_trylock(&ngx_time_lock)) {
        return;
    }

    ngx_gettimeofday(&tv);

    sec = tv.tv_sec;

    tp = &cached_time[slot];

    if (tp->sec == sec) {
        ngx_unlock(&ngx_time_lock);
        return;
    }

    if (slot == NGX_TIME_SLOTS - 1) {
        slot = 0;
    } else {
        slot++;
    }

    tp = &cached_time[slot];

    tp->sec = 0;

    ngx_gmtime(sec + cached_gmtoff * 60, &tm);

    p = &cached_err_log_time[slot][0];

    (void) ngx_sprintf(p, "%4d/%02d/%02d %02d:%02d:%02d",
                       tm.ngx_tm_year, tm.ngx_tm_mon,
                       tm.ngx_tm_mday, tm.ngx_tm_hour,
                       tm.ngx_tm_min, tm.ngx_tm_sec);

    p2 = &cached_syslog_time[slot][0];

    (void) ngx_sprintf(p2, "%s %2d %02d:%02d:%02d",
                       months[tm.ngx_tm_mon - 1], tm.ngx_tm_mday,
                       tm.ngx_tm_hour, tm.ngx_tm_min, tm.ngx_tm_sec);

    ngx_memory_barrier();

    ngx_cached_err_log_time.data = p;
    ngx_cached_syslog_time.data = p2;

    ngx_unlock(&ngx_time_lock);
}
