
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hrtime_t ;


 scalar_t__ ENOENT ;
 int ENOEXEC ;
 int ENXIO ;
 long MAX (int ,int ) ;
 long MILLISEC ;
 int MIN (long,int) ;
 long NSEC2MSEC (scalar_t__) ;
 int O_RDWR ;
 int ZFS_DEV ;
 int close (int) ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 scalar_t__ gethrtime () ;
 int libzfs_module_loaded (char const*) ;
 scalar_t__ libzfs_run_process (char*,char**,int ) ;
 int open (int ,int ) ;
 int sched_yield () ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int ) ;
 long strtol (char*,int *,int ) ;
 int usleep (int) ;

__attribute__((used)) static int
libzfs_load_module_impl(const char *module)
{
 char *argv[4] = {"/sbin/modprobe", "-q", (char *)module, (char *)0};
 char *load_str, *timeout_str;
 long timeout = 10;
 long busy_timeout = 10;
 int load = 0, fd;
 hrtime_t start;


 if (!libzfs_module_loaded(module)) {
  load_str = getenv("ZFS_MODULE_LOADING");
  if (load_str) {
   if (!strncasecmp(load_str, "YES", strlen("YES")) ||
       !strncasecmp(load_str, "ON", strlen("ON")))
    load = 1;
   else
    load = 0;
  }

  if (load) {
   if (libzfs_run_process("/sbin/modprobe", argv, 0))
    return (ENOEXEC);
  }

  if (!libzfs_module_loaded(module))
   return (ENXIO);
 }
 timeout_str = getenv("ZFS_MODULE_TIMEOUT");
 if (timeout_str) {
  timeout = strtol(timeout_str, ((void*)0), 0);
  timeout = MAX(MIN(timeout, (10 * 60)), 0);
 }

 start = gethrtime();
 do {
  fd = open(ZFS_DEV, O_RDWR);
  if (fd >= 0) {
   (void) close(fd);
   return (0);
  } else if (errno != ENOENT) {
   return (errno);
  } else if (NSEC2MSEC(gethrtime() - start) < busy_timeout) {
   sched_yield();
  } else {
   usleep(10 * MILLISEC);
  }
 } while (NSEC2MSEC(gethrtime() - start) < (timeout * MILLISEC));

 return (ENOENT);
}
