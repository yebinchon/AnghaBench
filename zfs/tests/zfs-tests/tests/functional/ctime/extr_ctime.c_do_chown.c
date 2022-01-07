
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chown (char const*,scalar_t__,scalar_t__) ;
 int errno ;
 int fprintf (int ,char*,char const*,int,int,int) ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 int stderr ;

__attribute__((used)) static int
do_chown(const char *pfile)
{
 int ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }

 if (chown(pfile, getuid(), getgid()) == -1) {
  (void) fprintf(stderr, "chown(%s, %d, %d) failed with errno "
      "%d\n", pfile, (int)getuid(), (int)getgid(), errno);
  return (1);
 }

 return (ret);
}
