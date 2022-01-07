
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct zed_conf {int state_file; int state_fd; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int int64_t ;
typedef int etime ;
typedef int eid ;


 int EINVAL ;
 int EIO ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ fdatasync (int ) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int strerror (int ) ;
 scalar_t__ writev (int ,struct iovec*,int) ;
 int zed_log_msg (int ,char*,int ,...) ;

int
zed_conf_write_state(struct zed_conf *zcp, uint64_t eid, int64_t etime[])
{
 ssize_t len;
 struct iovec iov[3];
 ssize_t n;

 if (!zcp) {
  errno = EINVAL;
  zed_log_msg(LOG_ERR,
      "Failed to write state file: %s", strerror(errno));
  return (-1);
 }
 if (lseek(zcp->state_fd, 0, SEEK_SET) == (off_t)-1) {
  zed_log_msg(LOG_WARNING,
      "Failed to reposition state file offset: %s",
      strerror(errno));
  return (-1);
 }
 len = 0;
 iov[0].iov_base = &eid;
 len += iov[0].iov_len = sizeof (eid);
 iov[1].iov_base = &etime[0];
 len += iov[1].iov_len = sizeof (etime[0]);
 iov[2].iov_base = &etime[1];
 len += iov[2].iov_len = sizeof (etime[1]);

 n = writev(zcp->state_fd, iov, 3);
 if (n < 0) {
  zed_log_msg(LOG_WARNING,
      "Failed to write state file \"%s\": %s",
      zcp->state_file, strerror(errno));
  return (-1);
 }
 if (n != len) {
  errno = EIO;
  zed_log_msg(LOG_WARNING,
      "Failed to write state file \"%s\": Wrote %d of %d bytes",
      zcp->state_file, n, len);
  return (-1);
 }
 if (fdatasync(zcp->state_fd) < 0) {
  zed_log_msg(LOG_WARNING,
      "Failed to sync state file \"%s\": %s",
      zcp->state_file, strerror(errno));
  return (-1);
 }
 return (0);
}
