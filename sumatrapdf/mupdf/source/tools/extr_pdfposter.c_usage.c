
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr,
  "usage: mutool poster [options] input.pdf [output.pdf]\n"
  "\t-p -\tpassword\n"
  "\t-x\tx decimation factor\n"
  "\t-y\ty decimation factor\n");
 exit(1);
}
