
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;
typedef int uint64_t ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef int buf ;


 int LOG_WARNING ;
 int ZEVENT_VAR_PREFIX ;
 int _zed_event_add_var (int ,int *,int ,char*,char*,...) ;
 int assert (int ) ;
 struct tm* localtime (int const*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int zed_log_msg (int ,char*,int ,char*,int ,char*) ;

__attribute__((used)) static void
_zed_event_add_time_strings(uint64_t eid, zed_strings_t *zsp, int64_t etime[])
{
 struct tm *stp;
 char buf[32];

 assert(zsp != ((void*)0));
 assert(etime != ((void*)0));

 _zed_event_add_var(eid, zsp, ZEVENT_VAR_PREFIX, "TIME_SECS",
     "%lld", (long long int) etime[0]);
 _zed_event_add_var(eid, zsp, ZEVENT_VAR_PREFIX, "TIME_NSECS",
     "%lld", (long long int) etime[1]);

 if (!(stp = localtime((const time_t *) &etime[0]))) {
  zed_log_msg(LOG_WARNING, "Failed to add %s%s for eid=%llu: %s",
      ZEVENT_VAR_PREFIX, "TIME_STRING", eid, "localtime error");
 } else if (!strftime(buf, sizeof (buf), "%Y-%m-%d %H:%M:%S%z", stp)) {
  zed_log_msg(LOG_WARNING, "Failed to add %s%s for eid=%llu: %s",
      ZEVENT_VAR_PREFIX, "TIME_STRING", eid, "strftime error");
 } else {
  _zed_event_add_var(eid, zsp, ZEVENT_VAR_PREFIX, "TIME_STRING",
      "%s", buf);
 }
}
