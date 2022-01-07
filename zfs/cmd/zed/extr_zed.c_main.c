
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct zed_conf {int do_foreground; int do_force; scalar_t__ do_memlock; scalar_t__ do_verbose; } ;
typedef int int64_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_DAEMON ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 scalar_t__ STDERR_FILENO ;
 int ZFS_META_RELEASE ;
 int ZFS_META_VERSION ;
 int _finish_daemonize () ;
 int _got_exit ;
 scalar_t__ _got_hup ;
 int _lock_memory () ;
 int _setup_sig_handlers () ;
 int _start_daemonize () ;
 scalar_t__ chdir (char*) ;
 int exit (int ) ;
 scalar_t__ geteuid () ;
 scalar_t__ getpid () ;
 int umask (int ) ;
 struct zed_conf* zed_conf_create () ;
 int zed_conf_destroy (struct zed_conf*) ;
 scalar_t__ zed_conf_open_state (struct zed_conf*) ;
 int zed_conf_parse_file (struct zed_conf*) ;
 int zed_conf_parse_opts (struct zed_conf*,int,char**) ;
 scalar_t__ zed_conf_read_state (struct zed_conf*,int *,int *) ;
 scalar_t__ zed_conf_scan_dir (struct zed_conf*) ;
 scalar_t__ zed_conf_write_pid (struct zed_conf*) ;
 int zed_event_fini (struct zed_conf*) ;
 int zed_event_init (struct zed_conf*) ;
 int zed_event_seek (struct zed_conf*,int ,int *) ;
 int zed_event_service (struct zed_conf*) ;
 int zed_file_close_from (scalar_t__) ;
 int zed_log_die (char*) ;
 int zed_log_fini () ;
 int zed_log_init (char*) ;
 int zed_log_msg (int ,char*,...) ;
 int zed_log_stderr_open (int ) ;
 int zed_log_syslog_open (int ) ;

int
main(int argc, char *argv[])
{
 struct zed_conf *zcp;
 uint64_t saved_eid;
 int64_t saved_etime[2];

 zed_log_init(argv[0]);
 zed_log_stderr_open(LOG_NOTICE);
 zcp = zed_conf_create();
 zed_conf_parse_opts(zcp, argc, argv);
 if (zcp->do_verbose)
  zed_log_stderr_open(LOG_INFO);

 if (geteuid() != 0)
  zed_log_die("Must be run as root");

 zed_conf_parse_file(zcp);

 zed_file_close_from(STDERR_FILENO + 1);

 (void) umask(0);

 if (chdir("/") < 0)
  zed_log_die("Failed to change to root directory");

 if (zed_conf_scan_dir(zcp) < 0)
  exit(EXIT_FAILURE);

 if (!zcp->do_foreground) {
  _start_daemonize();
  zed_log_syslog_open(LOG_DAEMON);
 }
 _setup_sig_handlers();

 if (zcp->do_memlock)
  _lock_memory();

 if ((zed_conf_write_pid(zcp) < 0) && (!zcp->do_force))
  exit(EXIT_FAILURE);

 if (!zcp->do_foreground)
  _finish_daemonize();

 zed_log_msg(LOG_NOTICE,
     "ZFS Event Daemon %s-%s (PID %d)",
     ZFS_META_VERSION, ZFS_META_RELEASE, (int)getpid());

 if (zed_conf_open_state(zcp) < 0)
  exit(EXIT_FAILURE);

 if (zed_conf_read_state(zcp, &saved_eid, saved_etime) < 0)
  exit(EXIT_FAILURE);

 zed_event_init(zcp);
 zed_event_seek(zcp, saved_eid, saved_etime);

 while (!_got_exit) {
  if (_got_hup) {
   _got_hup = 0;
   (void) zed_conf_scan_dir(zcp);
  }
  zed_event_service(zcp);
 }
 zed_log_msg(LOG_NOTICE, "Exiting");
 zed_event_fini(zcp);
 zed_conf_destroy(zcp);
 zed_log_fini();
 exit(EXIT_SUCCESS);
}
