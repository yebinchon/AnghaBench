
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int SYSTEMTIME ;
typedef int FILE ;


 int DATE_LONGDATE ;
 int GetDateFormat (int ,int ,int *,int *,char*,int) ;
 int GetTimeFormat (int ,int ,int *,int *,char*,int) ;
 int LOCALE_USER_DEFAULT ;
 int UnixTimeToSystemTime (int ,int *) ;
 int fprintf (int *,char*,char*,char*) ;

void xml_time_out(FILE* xmlout, time_t t)
{

    SYSTEMTIME st;
    char szLocalDate[255], szLocalTime[255];
    UnixTimeToSystemTime(t, &st);
    GetDateFormat(LOCALE_USER_DEFAULT, DATE_LONGDATE, &st, ((void*)0), szLocalDate, 255);
    GetTimeFormat(LOCALE_USER_DEFAULT, 0, &st, ((void*)0), szLocalTime, 255);
    fprintf(xmlout, "%s %s", szLocalDate, szLocalTime);
}
