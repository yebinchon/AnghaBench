
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int g_logfunc (int,char const*,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

int wcdb_log_vprint(int prio, const char *tag, const char *fmt, va_list ap)
{
    char buf[1024];
    vsnprintf(buf, sizeof(buf), fmt, ap);
    return g_logfunc(prio, tag, buf);
}
