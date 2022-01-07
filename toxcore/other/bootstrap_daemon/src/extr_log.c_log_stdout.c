
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int LOG_LEVEL ;


 int fflush (int ) ;
 int level_stdout (int ) ;
 int vfprintf (int ,char const*,int ) ;

void log_stdout(LOG_LEVEL level, const char *format, va_list args)
{
    vfprintf(level_stdout(level), format, args);
    fflush(level_stdout(level));
}
