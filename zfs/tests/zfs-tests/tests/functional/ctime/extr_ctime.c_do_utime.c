
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,char const*,int) ;
 int stderr ;
 int utime (char const*,int *) ;

__attribute__((used)) static int
do_utime(const char *pfile)
{
 int ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }




 if (utime(pfile, ((void*)0)) == -1) {
  (void) fprintf(stderr, "utime(%s, NULL) failed with errno "
      "%d\n", pfile, errno);
  return (1);
 }

 return (ret);
}
