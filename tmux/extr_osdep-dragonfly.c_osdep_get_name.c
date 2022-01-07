
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct stat {scalar_t__ st_rdev; } ;
struct kinfo_proc {scalar_t__ kp_tdev; int kp_comm; } ;


 int CTL_KERN ;
 scalar_t__ ENOMEM ;
 int KERN_PROC ;
 int KERN_PROC_PGRP ;
 struct kinfo_proc* cmp_procs (struct kinfo_proc*,struct kinfo_proc*) ;
 scalar_t__ errno ;
 int free (struct kinfo_proc*) ;
 int nitems (int*) ;
 struct kinfo_proc* realloc (struct kinfo_proc*,size_t) ;
 int stat (char*,struct stat*) ;
 char* strdup (int ) ;
 int sysctl (int*,int ,struct kinfo_proc*,size_t*,int *,int ) ;
 int tcgetpgrp (int) ;

char *
osdep_get_name(int fd, char *tty)
{
 int mib[4] = { CTL_KERN, KERN_PROC, KERN_PROC_PGRP, 0 };
 struct stat sb;
 size_t len;
 struct kinfo_proc *buf, *newbuf, *bestp;
 u_int i;
 char *name;

 buf = ((void*)0);

 if (stat(tty, &sb) == -1)
  return (((void*)0));
 if ((mib[3] = tcgetpgrp(fd)) == -1)
  return (((void*)0));

retry:
 if (sysctl(mib, nitems(mib), ((void*)0), &len, ((void*)0), 0) == -1)
  return (((void*)0));
 len = (len * 5) / 4;

 if ((newbuf = realloc(buf, len)) == ((void*)0))
  goto error;
 buf = newbuf;

 if (sysctl(mib, nitems(mib), buf, &len, ((void*)0), 0) == -1) {
  if (errno == ENOMEM)
   goto retry;
  goto error;
 }

 bestp = ((void*)0);
 for (i = 0; i < len / sizeof (struct kinfo_proc); i++) {
  if (buf[i].kp_tdev != sb.st_rdev)
   continue;
  if (bestp == ((void*)0))
   bestp = &buf[i];
  else
   bestp = cmp_procs(&buf[i], bestp);
 }

 name = ((void*)0);
 if (bestp != ((void*)0))
  name = strdup(bestp->kp_comm);

 free(buf);
 return (name);

error:
 free(buf);
 return (((void*)0));
}
