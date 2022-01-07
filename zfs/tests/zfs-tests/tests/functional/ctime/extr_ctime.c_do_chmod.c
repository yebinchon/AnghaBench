
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_MODE ;
 int chmod (char const*,int ) ;
 int errno ;
 int fprintf (int ,char*,char const*,int) ;
 int stderr ;

__attribute__((used)) static int
do_chmod(const char *pfile)
{
 int ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }

 if (chmod(pfile, ALL_MODE) == -1) {
  (void) fprintf(stderr, "chmod(%s, ALL_MODE) failed with "
      "errno %d\n", pfile, errno);
  return (1);
 }

 return (ret);
}
