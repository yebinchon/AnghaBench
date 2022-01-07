
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_fd; int v_dump_fd; int v_path; int v_size; } ;
typedef TYPE_1__ vnode_t ;
struct stat64 {int st_size; int st_mode; } ;


 int FCREAT ;
 int FD_CLOEXEC ;
 int FREAD ;
 int F_SETFD ;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_DIRECT ;
 int O_WRONLY ;
 scalar_t__ S_ISBLK (int ) ;
 int UMEM_NOFAIL ;
 char* basename (char*) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int fstat64_blk (int,struct stat64*) ;
 int open64 (char*,int,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int spa_strdup (char*) ;
 int stat64 (char*,struct stat64*) ;
 int umask (int) ;
 int umem_free (char*,int) ;
 void* umem_zalloc (int,int ) ;
 char* vn_dumpdir ;

int
vn_open(char *path, int x1, int flags, int mode, vnode_t **vpp, int x2, int x3)
{
 int fd = -1;
 int dump_fd = -1;
 vnode_t *vp;
 int old_umask = 0;
 struct stat64 st;
 int err;

 if (!(flags & FCREAT) && stat64(path, &st) == -1) {
  err = errno;
  return (err);
 }

 if (!(flags & FCREAT) && S_ISBLK(st.st_mode))
  flags |= O_DIRECT;

 if (flags & FCREAT)
  old_umask = umask(0);





 fd = open64(path, flags - FREAD, mode);
 if (fd == -1) {
  err = errno;
  return (err);
 }

 if (flags & FCREAT)
  (void) umask(old_umask);

 if (vn_dumpdir != ((void*)0)) {
  char *dumppath = umem_zalloc(MAXPATHLEN, UMEM_NOFAIL);
  (void) snprintf(dumppath, MAXPATHLEN,
      "%s/%s", vn_dumpdir, basename(path));
  dump_fd = open64(dumppath, O_CREAT | O_WRONLY, 0666);
  umem_free(dumppath, MAXPATHLEN);
  if (dump_fd == -1) {
   err = errno;
   close(fd);
   return (err);
  }
 } else {
  dump_fd = -1;
 }

 if (fstat64_blk(fd, &st) == -1) {
  err = errno;
  close(fd);
  if (dump_fd != -1)
   close(dump_fd);
  return (err);
 }

 (void) fcntl(fd, F_SETFD, FD_CLOEXEC);

 *vpp = vp = umem_zalloc(sizeof (vnode_t), UMEM_NOFAIL);

 vp->v_fd = fd;
 vp->v_size = st.st_size;
 vp->v_path = spa_strdup(path);
 vp->v_dump_fd = dump_fd;

 return (0);
}
