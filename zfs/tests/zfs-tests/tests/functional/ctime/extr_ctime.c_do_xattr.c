
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,char const*,int,int,int) ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 int setxattr (char const*,char*,char*,int ,int ) ;
 int stderr ;
 int strlen (char*) ;

__attribute__((used)) static int
do_xattr(const char *pfile)
{
 int ret = 0;
 char *value = "user.value";

 if (pfile == ((void*)0)) {
  return (-1);
 }

 if (setxattr(pfile, "user.x", value, strlen(value), 0) == -1) {
  (void) fprintf(stderr, "setxattr(%s, %d, %d) failed with errno "
      "%d\n", pfile, (int)getuid(), (int)getgid(), errno);
  return (1);
 }
 return (ret);
}
