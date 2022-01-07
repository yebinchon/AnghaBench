
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int time_t ;
struct skynet_context {int dummy; } ;
typedef int FILE ;


 char* ctime (int*) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int,char*) ;
 int skynet_error (struct skynet_context*,char*,char*) ;
 char* skynet_getenv (char*) ;
 int skynet_now () ;
 int skynet_starttime () ;
 int sprintf (char*,char*,char const*,int) ;
 size_t strlen (char const*) ;

FILE *
skynet_log_open(struct skynet_context * ctx, uint32_t handle) {
 const char * logpath = skynet_getenv("logpath");
 if (logpath == ((void*)0))
  return ((void*)0);
 size_t sz = strlen(logpath);
 char tmp[sz + 16];
 sprintf(tmp, "%s/%08x.log", logpath, handle);
 FILE *f = fopen(tmp, "ab");
 if (f) {
  uint32_t starttime = skynet_starttime();
  uint64_t currenttime = skynet_now();
  time_t ti = starttime + currenttime/100;
  skynet_error(ctx, "Open log file %s", tmp);
  fprintf(f, "open time: %u %s", (uint32_t)currenttime, ctime(&ti));
  fflush(f);
 } else {
  skynet_error(ctx, "Open log file %s fail", tmp);
 }
 return f;
}
