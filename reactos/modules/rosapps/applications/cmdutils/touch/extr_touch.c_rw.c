
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int off_t ;
typedef int byte ;


 int DEFFILEMODE ;
 int O_RDWR ;
 int SEEK_SET ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ _chmod (char*,int ) ;
 scalar_t__ _chsize (int,int ) ;
 scalar_t__ _close (int) ;
 int _lseek (int,int ,int ) ;
 int _open (char*,int ,int ) ;
 int _read (int,int *,int) ;
 int _write (int,int *,int) ;
 int strerror (int ) ;
 int warn (char*,char*) ;
 int warnx (char*,char*,int ) ;

int
rw(char *fname, struct stat *sbp, int force)
{
 int fd, needed_chmod, rval;
 u_char byte;


 if (!S_ISREG(sbp->st_mode) && !S_ISDIR(sbp->st_mode)) {
  warnx("%s: %s", fname, strerror(0));
  return (1);
 }

 needed_chmod = rval = 0;
 if ((fd = _open(fname, O_RDWR, 0)) == -1) {
  if (!force || _chmod(fname, DEFFILEMODE))
   goto err;
  if ((fd = _open(fname, O_RDWR, 0)) == -1)
   goto err;
  needed_chmod = 1;
 }

 if (sbp->st_size != 0) {
  if (_read(fd, &byte, sizeof(byte)) != sizeof(byte))
   goto err;
  if (_lseek(fd, (off_t)0, SEEK_SET) == -1)
   goto err;
  if (_write(fd, &byte, sizeof(byte)) != sizeof(byte))
   goto err;
 } else {
  if (_write(fd, &byte, sizeof(byte)) != sizeof(byte)) {
err: rval = 1;
   warn("%s", fname);

  } else if (_chsize(fd, (off_t)0)) {
   rval = 1;
   warn("%s: file modified", fname);
  }
 }

 if (_close(fd) && rval != 1) {
  rval = 1;
  warn("%s", fname);
 }
 if (needed_chmod && _chmod(fname, sbp->st_mode) && rval != 1) {
  rval = 1;
  warn("%s: permissions modified", fname);
 }
 return (rval);
}
