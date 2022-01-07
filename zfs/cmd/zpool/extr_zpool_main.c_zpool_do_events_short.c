
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
typedef int time_t ;
typedef int nvlist_t ;
typedef int longlong_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ scripted; } ;
typedef TYPE_1__ ev_opts_t ;


 int FM_CLASS ;
 int FM_EREPORT_TIME ;
 int ctime_r (int const*,char*) ;
 char* gettext (char*) ;
 int memset (char*,char,int) ;
 scalar_t__ nvlist_lookup_int64_array (int *,int ,scalar_t__**,int *) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int printf (char*,char*) ;
 int sprintf (char*,char*,int ) ;
 int strncpy (char*,char*,int) ;
 int verify (int) ;

__attribute__((used)) static void
zpool_do_events_short(nvlist_t *nvl, ev_opts_t *opts)
{
 char ctime_str[26], str[32], *ptr;
 int64_t *tv;
 uint_t n;

 verify(nvlist_lookup_int64_array(nvl, FM_EREPORT_TIME, &tv, &n) == 0);
 memset(str, ' ', 32);
 (void) ctime_r((const time_t *)&tv[0], ctime_str);
 (void) strncpy(str, ctime_str+4, 6);
 (void) strncpy(str+7, ctime_str+20, 4);
 (void) strncpy(str+12, ctime_str+11, 8);
 (void) sprintf(str+20, ".%09lld", (longlong_t)tv[1]);
 if (opts->scripted)
  (void) printf(gettext("%s\t"), str);
 else
  (void) printf(gettext("%s "), str);

 verify(nvlist_lookup_string(nvl, FM_CLASS, &ptr) == 0);
 (void) printf(gettext("%s\n"), ptr);
}
