
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ MOUNT_TIME ;
 int finish_progress (char*) ;
 int gettext (char*) ;
 int set_progress_header (int ) ;
 int sprintf (char*,char*,int,int) ;
 scalar_t__ time (int *) ;
 int update_progress (char*) ;

__attribute__((used)) static void
report_mount_progress(int current, int total)
{
 static time_t last_progress_time = 0;
 time_t now = time(((void*)0));
 char info[32];


 ++current;


 if (current == 1) {
  set_progress_header(gettext("Mounting ZFS filesystems"));
 } else if (current != total && last_progress_time + MOUNT_TIME >= now) {

  return;
 }

 last_progress_time = now;

 (void) sprintf(info, "(%d/%d)", current, total);

 if (current == total)
  finish_progress(info);
 else
  update_progress(info);
}
