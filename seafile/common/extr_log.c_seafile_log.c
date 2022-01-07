
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int gpointer ;
typedef char gchar ;
typedef scalar_t__ GLogLevelFlags ;


 scalar_t__ enable_syslog ;
 int fflush (int *) ;
 int fputs (char const*,int *) ;
 int g_return_if_fail (int) ;
 int get_syslog_level (scalar_t__) ;
 struct tm* localtime (int *) ;
 int * logfp ;
 int printf (char*,char*,char const*) ;
 scalar_t__ seafile_log_level ;
 int strftime (char*,int,char*,struct tm*) ;
 int syslog (int ,char*,char const*) ;
 int time (int *) ;

__attribute__((used)) static void
seafile_log (const gchar *log_domain, GLogLevelFlags log_level,
             const gchar *message, gpointer user_data)
{
    time_t t;
    struct tm *tm;
    char buf[1024];
    int len;

    if (log_level > seafile_log_level)
        return;

    t = time(((void*)0));
    tm = localtime(&t);
    len = strftime (buf, 1024, "[%x %X] ", tm);
    g_return_if_fail (len < 1024);
    if (logfp != ((void*)0)) {
        fputs (buf, logfp);
        fputs (message, logfp);
        fflush (logfp);
    } else {
        printf("%s %s", buf, message);
    }







}
