
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {scalar_t__ state_fd; int state_file; scalar_t__ do_zero; } ;
typedef int pid_t ;
typedef int mode_t ;
typedef int dirbuf ;


 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 scalar_t__ ENAMETOOLONG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int O_CREAT ;
 int O_RDWR ;
 int PATH_MAX ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IRWXU ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 scalar_t__ close (scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ mkdirp (char*,int) ;
 scalar_t__ open (int ,int,int) ;
 int strerror (scalar_t__) ;
 int strlcpy (char*,int ,int) ;
 char* strrchr (char*,char) ;
 int unlink (int ) ;
 int zed_file_is_locked (scalar_t__) ;
 int zed_file_lock (scalar_t__) ;
 int zed_log_msg (int ,char*,char*,...) ;

int
zed_conf_open_state(struct zed_conf *zcp)
{
 char dirbuf[PATH_MAX];
 mode_t dirmode = S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH;
 int n;
 char *p;
 int rv;

 if (!zcp || !zcp->state_file) {
  errno = EINVAL;
  zed_log_msg(LOG_ERR, "Failed to open state file: %s",
      strerror(errno));
  return (-1);
 }
 n = strlcpy(dirbuf, zcp->state_file, sizeof (dirbuf));
 if (n >= sizeof (dirbuf)) {
  errno = ENAMETOOLONG;
  zed_log_msg(LOG_WARNING, "Failed to open state file: %s",
      strerror(errno));
  return (-1);
 }
 p = strrchr(dirbuf, '/');
 if (p)
  *p = '\0';

 if ((mkdirp(dirbuf, dirmode) < 0) && (errno != EEXIST)) {
  zed_log_msg(LOG_WARNING,
      "Failed to create directory \"%s\": %s",
      dirbuf, strerror(errno));
  return (-1);
 }
 if (zcp->state_fd >= 0) {
  if (close(zcp->state_fd) < 0) {
   zed_log_msg(LOG_WARNING,
       "Failed to close state file \"%s\": %s",
       zcp->state_file, strerror(errno));
   return (-1);
  }
 }
 if (zcp->do_zero)
  (void) unlink(zcp->state_file);

 zcp->state_fd = open(zcp->state_file,
     (O_RDWR | O_CREAT), (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH));
 if (zcp->state_fd < 0) {
  zed_log_msg(LOG_WARNING, "Failed to open state file \"%s\": %s",
      zcp->state_file, strerror(errno));
  return (-1);
 }
 rv = zed_file_lock(zcp->state_fd);
 if (rv < 0) {
  zed_log_msg(LOG_WARNING, "Failed to lock state file \"%s\": %s",
      zcp->state_file, strerror(errno));
  return (-1);
 }
 if (rv > 0) {
  pid_t pid = zed_file_is_locked(zcp->state_fd);
  if (pid < 0) {
   zed_log_msg(LOG_WARNING,
       "Failed to test lock on state file \"%s\"",
       zcp->state_file);
  } else if (pid > 0) {
   zed_log_msg(LOG_WARNING,
       "Found PID %d bound to state file \"%s\"",
       pid, zcp->state_file);
  } else {
   zed_log_msg(LOG_WARNING,
       "Inconsistent lock state on state file \"%s\"",
       zcp->state_file);
  }
  return (-1);
 }
 return (0);
}
