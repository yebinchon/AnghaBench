
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int LOG_LEVEL ;


 int level_syslog (int ) ;
 int vsyslog (int ,char const*,int ) ;

void log_syslog(LOG_LEVEL level, const char *format, va_list args)
{
    vsyslog(level_syslog(level), format, args);
}
