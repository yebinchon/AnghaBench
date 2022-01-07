
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef scalar_t__ pid_t ;
typedef int buf ;
struct TYPE_2__ {char* logfile; int verbosity; scalar_t__ pid; scalar_t__ syslog_enabled; scalar_t__ masterhost; scalar_t__ sentinel_mode; int daylight_active; int timezone; } ;
typedef int FILE ;


 int LL_RAW ;
 int const LOG_DEBUG ;
 int const LOG_INFO ;
 int const LOG_NOTICE ;
 int const LOG_WARNING ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int nolocks_localtime (struct tm*,int ,int ,int ) ;
 TYPE_1__ server ;
 int snprintf (char*,int,char*,int) ;
 int * stdout ;
 int strftime (char*,int,char*,struct tm*) ;
 int syslog (int const,char*,char const*) ;

void serverLogRaw(int level, const char *msg) {
    const int syslogLevelMap[] = { LOG_DEBUG, LOG_INFO, LOG_NOTICE, LOG_WARNING };
    const char *c = ".-*#";
    FILE *fp;
    char buf[64];
    int rawmode = (level & LL_RAW);
    int log_to_stdout = server.logfile[0] == '\0';

    level &= 0xff;
    if (level < server.verbosity) return;

    fp = log_to_stdout ? stdout : fopen(server.logfile,"a");
    if (!fp) return;

    if (rawmode) {
        fprintf(fp,"%s",msg);
    } else {
        int off;
        struct timeval tv;
        int role_char;
        pid_t pid = getpid();

        gettimeofday(&tv,((void*)0));
        struct tm tm;
        nolocks_localtime(&tm,tv.tv_sec,server.timezone,server.daylight_active);
        off = strftime(buf,sizeof(buf),"%d %b %Y %H:%M:%S.",&tm);
        snprintf(buf+off,sizeof(buf)-off,"%03d",(int)tv.tv_usec/1000);
        if (server.sentinel_mode) {
            role_char = 'X';
        } else if (pid != server.pid) {
            role_char = 'C';
        } else {
            role_char = (server.masterhost ? 'S':'M');
        }
        fprintf(fp,"%d:%c %s %c %s\n",
            (int)getpid(),role_char, buf,c[level],msg);
    }
    fflush(fp);

    if (!log_to_stdout) fclose(fp);
    if (server.syslog_enabled) syslog(syslogLevelMap[level], "%s", msg);
}
