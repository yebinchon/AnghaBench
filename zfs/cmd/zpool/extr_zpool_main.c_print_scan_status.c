
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int total_buf ;
typedef scalar_t__ time_t ;
typedef int srate_buf ;
typedef int scanned_buf ;
typedef int processed_buf ;
struct TYPE_3__ {scalar_t__ pss_func; scalar_t__ pss_start_time; scalar_t__ pss_end_time; scalar_t__ pss_pass_scrub_pause; int pss_processed; scalar_t__ pss_state; int pss_examined; int pss_pass_exam; int pss_issued; int pss_pass_issued; int pss_to_examine; int pss_pass_start; scalar_t__ pss_pass_scrub_spent_paused; scalar_t__ pss_errors; } ;
typedef TYPE_1__ pool_scan_stat_t ;
typedef int issued_buf ;
typedef int irate_buf ;


 scalar_t__ DSS_CANCELED ;
 scalar_t__ DSS_FINISHED ;
 scalar_t__ DSS_SCANNING ;
 scalar_t__ POOL_SCAN_FUNCS ;
 scalar_t__ POOL_SCAN_NONE ;
 scalar_t__ POOL_SCAN_RESILVER ;
 scalar_t__ POOL_SCAN_SCRUB ;
 int UINT64_MAX ;
 int assert (int) ;
 char* ctime (scalar_t__*) ;
 char* gettext (char*) ;
 int printf (char*,...) ;
 int time (int *) ;
 int zfs_nicebytes (int,char*,int) ;

__attribute__((used)) static void
print_scan_status(pool_scan_stat_t *ps)
{
 time_t start, end, pause;
 uint64_t total_secs_left;
 uint64_t elapsed, secs_left, mins_left, hours_left, days_left;
 uint64_t pass_scanned, scanned, pass_issued, issued, total;
 uint64_t scan_rate, issue_rate;
 double fraction_done;
 char processed_buf[7], scanned_buf[7], issued_buf[7], total_buf[7];
 char srate_buf[7], irate_buf[7];

 (void) printf(gettext("  scan: "));


 if (ps == ((void*)0) || ps->pss_func == POOL_SCAN_NONE ||
     ps->pss_func >= POOL_SCAN_FUNCS) {
  (void) printf(gettext("none requested\n"));
  return;
 }

 start = ps->pss_start_time;
 end = ps->pss_end_time;
 pause = ps->pss_pass_scrub_pause;

 zfs_nicebytes(ps->pss_processed, processed_buf, sizeof (processed_buf));

 assert(ps->pss_func == POOL_SCAN_SCRUB ||
     ps->pss_func == POOL_SCAN_RESILVER);


 if (ps->pss_state == DSS_FINISHED) {
  total_secs_left = end - start;
  days_left = total_secs_left / 60 / 60 / 24;
  hours_left = (total_secs_left / 60 / 60) % 24;
  mins_left = (total_secs_left / 60) % 60;
  secs_left = (total_secs_left % 60);

  if (ps->pss_func == POOL_SCAN_SCRUB) {
   (void) printf(gettext("scrub repaired %s "
       "in %llu days %02llu:%02llu:%02llu "
       "with %llu errors on %s"), processed_buf,
       (u_longlong_t)days_left, (u_longlong_t)hours_left,
       (u_longlong_t)mins_left, (u_longlong_t)secs_left,
       (u_longlong_t)ps->pss_errors, ctime(&end));
  } else if (ps->pss_func == POOL_SCAN_RESILVER) {
   (void) printf(gettext("resilvered %s "
       "in %llu days %02llu:%02llu:%02llu "
       "with %llu errors on %s"), processed_buf,
       (u_longlong_t)days_left, (u_longlong_t)hours_left,
       (u_longlong_t)mins_left, (u_longlong_t)secs_left,
       (u_longlong_t)ps->pss_errors, ctime(&end));
  }
  return;
 } else if (ps->pss_state == DSS_CANCELED) {
  if (ps->pss_func == POOL_SCAN_SCRUB) {
   (void) printf(gettext("scrub canceled on %s"),
       ctime(&end));
  } else if (ps->pss_func == POOL_SCAN_RESILVER) {
   (void) printf(gettext("resilver canceled on %s"),
       ctime(&end));
  }
  return;
 }

 assert(ps->pss_state == DSS_SCANNING);


 if (ps->pss_func == POOL_SCAN_SCRUB) {
  if (pause == 0) {
   (void) printf(gettext("scrub in progress since %s"),
       ctime(&start));
  } else {
   (void) printf(gettext("scrub paused since %s"),
       ctime(&pause));
   (void) printf(gettext("\tscrub started on %s"),
       ctime(&start));
  }
 } else if (ps->pss_func == POOL_SCAN_RESILVER) {
  (void) printf(gettext("resilver in progress since %s"),
      ctime(&start));
 }

 scanned = ps->pss_examined;
 pass_scanned = ps->pss_pass_exam;
 issued = ps->pss_issued;
 pass_issued = ps->pss_pass_issued;
 total = ps->pss_to_examine;


 fraction_done = (double)issued / total;


 elapsed = time(((void*)0)) - ps->pss_pass_start;
 elapsed -= ps->pss_pass_scrub_spent_paused;
 elapsed = (elapsed != 0) ? elapsed : 1;

 scan_rate = pass_scanned / elapsed;
 issue_rate = pass_issued / elapsed;
 total_secs_left = (issue_rate != 0 && total >= issued) ?
     ((total - issued) / issue_rate) : UINT64_MAX;

 days_left = total_secs_left / 60 / 60 / 24;
 hours_left = (total_secs_left / 60 / 60) % 24;
 mins_left = (total_secs_left / 60) % 60;
 secs_left = (total_secs_left % 60);


 zfs_nicebytes(scanned, scanned_buf, sizeof (scanned_buf));
 zfs_nicebytes(issued, issued_buf, sizeof (issued_buf));
 zfs_nicebytes(total, total_buf, sizeof (total_buf));
 zfs_nicebytes(scan_rate, srate_buf, sizeof (srate_buf));
 zfs_nicebytes(issue_rate, irate_buf, sizeof (irate_buf));


 if (pause == 0) {
  (void) printf(gettext("\t%s scanned at %s/s, "
      "%s issued at %s/s, %s total\n"),
      scanned_buf, srate_buf, issued_buf, irate_buf, total_buf);
 } else {
  (void) printf(gettext("\t%s scanned, %s issued, %s total\n"),
      scanned_buf, issued_buf, total_buf);
 }

 if (ps->pss_func == POOL_SCAN_RESILVER) {
  (void) printf(gettext("\t%s resilvered, %.2f%% done"),
      processed_buf, 100 * fraction_done);
 } else if (ps->pss_func == POOL_SCAN_SCRUB) {
  (void) printf(gettext("\t%s repaired, %.2f%% done"),
      processed_buf, 100 * fraction_done);
 }

 if (pause == 0) {
  if (total_secs_left != UINT64_MAX &&
      issue_rate >= 10 * 1024 * 1024) {
   (void) printf(gettext(", %llu days "
       "%02llu:%02llu:%02llu to go\n"),
       (u_longlong_t)days_left, (u_longlong_t)hours_left,
       (u_longlong_t)mins_left, (u_longlong_t)secs_left);
  } else {
   (void) printf(gettext(", no estimated "
       "completion time\n"));
  }
 } else {
  (void) printf(gettext("\n"));
 }
}
