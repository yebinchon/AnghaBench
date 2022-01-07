
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_gmtoff; int tm_sec; int tm_min; int tm_hour; } ;
struct TYPE_7__ {int i_last; } ;
typedef TYPE_2__ date_time_t ;
struct TYPE_8__ {TYPE_1__* p_sessions; } ;
typedef TYPE_3__ cam_t ;
struct TYPE_6__ {scalar_t__ p_sys; } ;


 int AOT_DATE_TIME ;
 int APDUSend (TYPE_3__*,int,int ,int *,int) ;
 int DEC2BCD (int ) ;
 int SetWBE (int *,int) ;
 scalar_t__ gmtime_r (int *,struct tm*) ;
 scalar_t__ localtime_r (int *,struct tm*) ;
 int time (int *) ;
 int vlc_tick_now () ;

__attribute__((used)) static void DateTimeSend( cam_t * p_cam, int i_session_id )
{
    date_time_t *p_date =
        (date_time_t *)p_cam->p_sessions[i_session_id - 1].p_sys;

    time_t t = time(((void*)0));
    struct tm tm_gmt;
    struct tm tm_loc;

    if ( gmtime_r(&t, &tm_gmt) && localtime_r(&t, &tm_loc) )
    {
        int Y = tm_gmt.tm_year;
        int M = tm_gmt.tm_mon + 1;
        int D = tm_gmt.tm_mday;
        int L = (M == 1 || M == 2) ? 1 : 0;
        int MJD = 14956 + D + (int)((Y - L) * 365.25)
                    + (int)((M + 1 + L * 12) * 30.6001);
        uint8_t p_response[7];



        SetWBE( &p_response[0], MJD );
        p_response[2] = (((tm_gmt.tm_hour / 10) << 4) + (tm_gmt.tm_hour % 10));
        p_response[3] = (((tm_gmt.tm_min / 10) << 4) + (tm_gmt.tm_min % 10));
        p_response[4] = (((tm_gmt.tm_sec / 10) << 4) + (tm_gmt.tm_sec % 10));
        SetWBE( &p_response[5], tm_loc.tm_gmtoff / 60 );

        APDUSend( p_cam, i_session_id, AOT_DATE_TIME, p_response, 7 );

        p_date->i_last = vlc_tick_now();
    }
}
