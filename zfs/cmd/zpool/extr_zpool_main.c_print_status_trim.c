
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zbuf ;
struct TYPE_3__ {int vs_trim_state; int vs_trim_bytes_done; int vs_trim_bytes_est; scalar_t__ vs_trim_notsup; int vs_trim_action_time; int vs_scan_removing; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef int time_t ;
typedef int tbuf ;
struct tm {int dummy; } ;
typedef scalar_t__ boolean_t ;





 char* gettext (char*) ;
 int localtime_r (int *,struct tm*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static void
print_status_trim(vdev_stat_t *vs, boolean_t verbose)
{
 if (verbose) {
  if ((vs->vs_trim_state == 130 ||
      vs->vs_trim_state == 128 ||
      vs->vs_trim_state == 129) &&
      !vs->vs_scan_removing) {
   char zbuf[1024];
   char tbuf[256];
   struct tm zaction_ts;

   time_t t = vs->vs_trim_action_time;
   int trim_pct = 100;
   if (vs->vs_trim_state != 129) {
    trim_pct = (vs->vs_trim_bytes_done *
        100 / (vs->vs_trim_bytes_est + 1));
   }

   (void) localtime_r(&t, &zaction_ts);
   (void) strftime(tbuf, sizeof (tbuf), "%c", &zaction_ts);

   switch (vs->vs_trim_state) {
   case 128:
    (void) snprintf(zbuf, sizeof (zbuf), ", %s %s",
        gettext("suspended, started at"), tbuf);
    break;
   case 130:
    (void) snprintf(zbuf, sizeof (zbuf), ", %s %s",
        gettext("started at"), tbuf);
    break;
   case 129:
    (void) snprintf(zbuf, sizeof (zbuf), ", %s %s",
        gettext("completed at"), tbuf);
    break;
   }

   (void) printf(gettext("  (%d%% trimmed%s)"),
       trim_pct, zbuf);
  } else if (vs->vs_trim_notsup) {
   (void) printf(gettext("  (trim unsupported)"));
  } else {
   (void) printf(gettext("  (untrimmed)"));
  }
 } else if (vs->vs_trim_state == 130) {
  (void) printf(gettext("  (trimming)"));
 }
}
