#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
typedef  void* ngx_uint_t ;
struct TYPE_16__ {size_t ngx_tm_wday; int ngx_tm_mon; int ngx_tm_gmtoff; int /*<<< orphan*/  ngx_tm_sec; int /*<<< orphan*/  ngx_tm_min; int /*<<< orphan*/  ngx_tm_hour; int /*<<< orphan*/  ngx_tm_mday; int /*<<< orphan*/  ngx_tm_year; int /*<<< orphan*/  ngx_tm_isdst; } ;
typedef  TYPE_1__ ngx_tm_t ;
struct TYPE_17__ {scalar_t__ sec; int gmtoff; void* usec; void* msec; } ;
typedef  TYPE_2__ ngx_time_t ;
typedef  void* ngx_int_t ;
struct TYPE_20__ {int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int /*<<< orphan*/ * data; } ;
struct TYPE_14__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int NGX_TIME_SLOTS ; 
 int /*<<< orphan*/ ** cached_err_log_time ; 
 void* cached_gmtoff ; 
 int /*<<< orphan*/ ** cached_http_log_iso8601 ; 
 int /*<<< orphan*/ ** cached_http_log_time ; 
 TYPE_1__* cached_http_log_tm ; 
 int /*<<< orphan*/ ** cached_http_time ; 
 int /*<<< orphan*/ ** cached_syslog_time ; 
 TYPE_2__* cached_time ; 
 int /*<<< orphan*/ * months ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_11__ ngx_cached_err_log_time ; 
 TYPE_10__ ngx_cached_http_log_iso8601 ; 
 TYPE_9__ ngx_cached_http_log_time ; 
 TYPE_8__ ngx_cached_http_time ; 
 TYPE_7__ ngx_cached_syslog_time ; 
 TYPE_2__* ngx_cached_time ; 
 TYPE_1__* ngx_cached_tm ; 
 int /*<<< orphan*/  ngx_current_msec ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ngx_time_lock ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 size_t slot ; 
 int /*<<< orphan*/ * week ; 

void
FUNC11(void)
{
    u_char          *p0, *p1, *p2, *p3, *p4;
    ngx_tm_t         tm, gmt;
    time_t           sec;
    ngx_uint_t       msec;
    ngx_time_t      *tp;
    struct timeval   tv;
#if (T_NGX_RET_CACHE)
    ngx_uint_t       usec;
#endif

    if (!FUNC9(&ngx_time_lock)) {
        return;
    }

    FUNC1(&tv);

    sec = tv.tv_sec;
    msec = tv.tv_usec / 1000;
#if (T_NGX_RET_CACHE)
    usec = tv.tv_usec % 1000;
#endif

    ngx_current_msec = FUNC6(sec, msec);

    tp = &cached_time[slot];

    if (tp->sec == sec) {
        tp->msec = msec;
#if (T_NGX_RET_CACHE)
        tp->usec = usec;
#endif
        FUNC10(&ngx_time_lock);
        return;
    }

    if (slot == NGX_TIME_SLOTS - 1) {
        slot = 0;
    } else {
        slot++;
    }

    tp = &cached_time[slot];

    tp->sec = sec;
    tp->msec = msec;
#if (T_NGX_RET_CACHE)
    tp->usec = usec;
#endif

    FUNC3(sec, &gmt);


    p0 = &cached_http_time[slot][0];

    (void) FUNC7(p0, "%s, %02d %s %4d %02d:%02d:%02d GMT",
                       week[gmt.ngx_tm_wday], gmt.ngx_tm_mday,
                       months[gmt.ngx_tm_mon - 1], gmt.ngx_tm_year,
                       gmt.ngx_tm_hour, gmt.ngx_tm_min, gmt.ngx_tm_sec);

#if (NGX_HAVE_GETTIMEZONE)

    tp->gmtoff = ngx_gettimezone();
    ngx_gmtime(sec + tp->gmtoff * 60, &tm);

#elif (NGX_HAVE_GMTOFF)

    ngx_localtime(sec, &tm);
    cached_gmtoff = (ngx_int_t) (tm.ngx_tm_gmtoff / 60);
    tp->gmtoff = cached_gmtoff;

#else

    FUNC4(sec, &tm);
    cached_gmtoff = FUNC8(tm.ngx_tm_isdst);
    tp->gmtoff = cached_gmtoff;

#endif

#if (T_NGX_RET_CACHE)
    cached_http_log_tm[slot] = tm;
#endif

    p1 = &cached_err_log_time[slot][0];

    (void) FUNC7(p1, "%4d/%02d/%02d %02d:%02d:%02d",
                       tm.ngx_tm_year, tm.ngx_tm_mon,
                       tm.ngx_tm_mday, tm.ngx_tm_hour,
                       tm.ngx_tm_min, tm.ngx_tm_sec);


    p2 = &cached_http_log_time[slot][0];

    (void) FUNC7(p2, "%02d/%s/%d:%02d:%02d:%02d %c%02i%02i",
                       tm.ngx_tm_mday, months[tm.ngx_tm_mon - 1],
                       tm.ngx_tm_year, tm.ngx_tm_hour,
                       tm.ngx_tm_min, tm.ngx_tm_sec,
                       tp->gmtoff < 0 ? '-' : '+',
                       FUNC0(tp->gmtoff / 60), FUNC0(tp->gmtoff % 60));

    p3 = &cached_http_log_iso8601[slot][0];

    (void) FUNC7(p3, "%4d-%02d-%02dT%02d:%02d:%02d%c%02i:%02i",
                       tm.ngx_tm_year, tm.ngx_tm_mon,
                       tm.ngx_tm_mday, tm.ngx_tm_hour,
                       tm.ngx_tm_min, tm.ngx_tm_sec,
                       tp->gmtoff < 0 ? '-' : '+',
                       FUNC0(tp->gmtoff / 60), FUNC0(tp->gmtoff % 60));

    p4 = &cached_syslog_time[slot][0];

    (void) FUNC7(p4, "%s %2d %02d:%02d:%02d",
                       months[tm.ngx_tm_mon - 1], tm.ngx_tm_mday,
                       tm.ngx_tm_hour, tm.ngx_tm_min, tm.ngx_tm_sec);

    FUNC5();

#if (T_NGX_RET_CACHE)
    ngx_cached_tm = &cached_http_log_tm[slot];
#endif
    ngx_cached_time = tp;
    ngx_cached_http_time.data = p0;
    ngx_cached_err_log_time.data = p1;
    ngx_cached_http_log_time.data = p2;
    ngx_cached_http_log_iso8601.data = p3;
    ngx_cached_syslog_time.data = p4;

    FUNC10(&ngx_time_lock);
}