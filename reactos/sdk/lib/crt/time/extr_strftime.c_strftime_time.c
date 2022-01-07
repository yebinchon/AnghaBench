
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_7__ {int time; } ;
struct TYPE_8__ {TYPE_1__ names; } ;
struct TYPE_10__ {TYPE_2__ str; int lcid; } ;
struct TYPE_9__ {scalar_t__ wMilliseconds; int wSecond; int wMinute; int wHour; int wDay; int wDayOfWeek; scalar_t__ wMonth; scalar_t__ wYear; } ;
typedef TYPE_3__ SYSTEMTIME ;
typedef TYPE_4__ MSVCRT___lc_time_data ;
typedef int BOOL ;


 int EINVAL ;
 int ERANGE ;
 int FALSE ;
 size_t GetTimeFormatA (int ,int ,TYPE_3__*,int ,char*,size_t) ;
 int TRUE ;
 int * _errno () ;

__attribute__((used)) static inline BOOL strftime_time(char *str, size_t *pos, size_t max,
        const struct tm *mstm, MSVCRT___lc_time_data *time_data)
{
    SYSTEMTIME st;
    size_t ret;

    st.wYear = mstm->tm_year + 1900;
    st.wMonth = mstm->tm_mon + 1;
    st.wDayOfWeek = mstm->tm_wday;
    st.wDay = mstm->tm_mday;
    st.wHour = mstm->tm_hour;
    st.wMinute = mstm->tm_min;
    st.wSecond = mstm->tm_sec;
    st.wMilliseconds = 0;

    ret = GetTimeFormatA(time_data->lcid, 0, &st, time_data->str.names.time, ((void*)0), 0);
    if(ret && ret<max-*pos)
        ret = GetTimeFormatA(time_data->lcid, 0, &st, time_data->str.names.time,
                str+*pos, max-*pos);
    if(!ret) {
        *str = 0;
        *_errno() = EINVAL;
        return FALSE;
    }else if(ret > max-*pos) {
        *str = 0;
        *_errno() = ERANGE;
        return FALSE;
    }
    *pos += ret-1;
    return TRUE;
}
