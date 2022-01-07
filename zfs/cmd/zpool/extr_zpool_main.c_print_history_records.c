
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
typedef void* uid_t ;
typedef int u_longlong_t ;
typedef void* time_t ;
typedef int tbuf ;
struct tm {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef int nvlist_t ;
typedef int longlong_t ;
struct TYPE_3__ {int longfmt; int internal; } ;
typedef TYPE_1__ hist_cbdata_t ;


 int ZFS_NUM_LEGACY_HISTORY_EVENTS ;
 int ZPOOL_HIST_CMD ;
 int ZPOOL_HIST_DSID ;
 int ZPOOL_HIST_DSNAME ;
 int ZPOOL_HIST_ERRNO ;
 int ZPOOL_HIST_HOST ;
 int ZPOOL_HIST_INPUT_NVL ;
 int ZPOOL_HIST_INT_EVENT ;
 int ZPOOL_HIST_INT_NAME ;
 int ZPOOL_HIST_INT_STR ;
 int ZPOOL_HIST_IOCTL ;
 int ZPOOL_HIST_OUTPUT_NVL ;
 int ZPOOL_HIST_RECORD ;
 int ZPOOL_HIST_TIME ;
 int ZPOOL_HIST_TXG ;
 int ZPOOL_HIST_WHO ;
 int ZPOOL_HIST_ZONE ;
 int dump_nvlist (int *,int) ;
 scalar_t__ fnvlist_lookup_int64 (int *,int ) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 char* fnvlist_lookup_string (int *,int ) ;
 void* fnvlist_lookup_uint64 (int *,int ) ;
 struct passwd* getpwuid (void*) ;
 int localtime_r (void**,struct tm*) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 int printf (char*,...) ;
 int strftime (char*,int,char*,struct tm*) ;
 int verify (int) ;
 char** zfs_history_event_names ;

__attribute__((used)) static void
print_history_records(nvlist_t *nvhis, hist_cbdata_t *cb)
{
 nvlist_t **records;
 uint_t numrecords;
 int i;

 verify(nvlist_lookup_nvlist_array(nvhis, ZPOOL_HIST_RECORD,
     &records, &numrecords) == 0);
 for (i = 0; i < numrecords; i++) {
  nvlist_t *rec = records[i];
  char tbuf[30] = "";

  if (nvlist_exists(rec, ZPOOL_HIST_TIME)) {
   time_t tsec;
   struct tm t;

   tsec = fnvlist_lookup_uint64(records[i],
       ZPOOL_HIST_TIME);
   (void) localtime_r(&tsec, &t);
   (void) strftime(tbuf, sizeof (tbuf), "%F.%T", &t);
  }

  if (nvlist_exists(rec, ZPOOL_HIST_CMD)) {
   (void) printf("%s %s", tbuf,
       fnvlist_lookup_string(rec, ZPOOL_HIST_CMD));
  } else if (nvlist_exists(rec, ZPOOL_HIST_INT_EVENT)) {
   int ievent =
       fnvlist_lookup_uint64(rec, ZPOOL_HIST_INT_EVENT);
   if (!cb->internal)
    continue;
   if (ievent >= ZFS_NUM_LEGACY_HISTORY_EVENTS) {
    (void) printf("%s unrecognized record:\n",
        tbuf);
    dump_nvlist(rec, 4);
    continue;
   }
   (void) printf("%s [internal %s txg:%lld] %s", tbuf,
       zfs_history_event_names[ievent],
       (longlong_t)fnvlist_lookup_uint64(
       rec, ZPOOL_HIST_TXG),
       fnvlist_lookup_string(rec, ZPOOL_HIST_INT_STR));
  } else if (nvlist_exists(rec, ZPOOL_HIST_INT_NAME)) {
   if (!cb->internal)
    continue;
   (void) printf("%s [txg:%lld] %s", tbuf,
       (longlong_t)fnvlist_lookup_uint64(
       rec, ZPOOL_HIST_TXG),
       fnvlist_lookup_string(rec, ZPOOL_HIST_INT_NAME));
   if (nvlist_exists(rec, ZPOOL_HIST_DSNAME)) {
    (void) printf(" %s (%llu)",
        fnvlist_lookup_string(rec,
        ZPOOL_HIST_DSNAME),
        (u_longlong_t)fnvlist_lookup_uint64(rec,
        ZPOOL_HIST_DSID));
   }
   (void) printf(" %s", fnvlist_lookup_string(rec,
       ZPOOL_HIST_INT_STR));
  } else if (nvlist_exists(rec, ZPOOL_HIST_IOCTL)) {
   if (!cb->internal)
    continue;
   (void) printf("%s ioctl %s\n", tbuf,
       fnvlist_lookup_string(rec, ZPOOL_HIST_IOCTL));
   if (nvlist_exists(rec, ZPOOL_HIST_INPUT_NVL)) {
    (void) printf("    input:\n");
    dump_nvlist(fnvlist_lookup_nvlist(rec,
        ZPOOL_HIST_INPUT_NVL), 8);
   }
   if (nvlist_exists(rec, ZPOOL_HIST_OUTPUT_NVL)) {
    (void) printf("    output:\n");
    dump_nvlist(fnvlist_lookup_nvlist(rec,
        ZPOOL_HIST_OUTPUT_NVL), 8);
   }
   if (nvlist_exists(rec, ZPOOL_HIST_ERRNO)) {
    (void) printf("    errno: %lld\n",
        (longlong_t)fnvlist_lookup_int64(rec,
        ZPOOL_HIST_ERRNO));
   }
  } else {
   if (!cb->internal)
    continue;
   (void) printf("%s unrecognized record:\n", tbuf);
   dump_nvlist(rec, 4);
  }

  if (!cb->longfmt) {
   (void) printf("\n");
   continue;
  }
  (void) printf(" [");
  if (nvlist_exists(rec, ZPOOL_HIST_WHO)) {
   uid_t who = fnvlist_lookup_uint64(rec, ZPOOL_HIST_WHO);
   struct passwd *pwd = getpwuid(who);
   (void) printf("user %d ", (int)who);
   if (pwd != ((void*)0))
    (void) printf("(%s) ", pwd->pw_name);
  }
  if (nvlist_exists(rec, ZPOOL_HIST_HOST)) {
   (void) printf("on %s",
       fnvlist_lookup_string(rec, ZPOOL_HIST_HOST));
  }
  if (nvlist_exists(rec, ZPOOL_HIST_ZONE)) {
   (void) printf(":%s",
       fnvlist_lookup_string(rec, ZPOOL_HIST_ZONE));
  }

  (void) printf("]");
  (void) printf("\n");
 }
}
