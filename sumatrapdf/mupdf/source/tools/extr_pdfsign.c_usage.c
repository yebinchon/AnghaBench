
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
  "usage: mutool sign [options] input.pdf [signature object numbers]\n"
  "\t-p -\tpassword\n"
  "\t-v \tverify signature\n"
  "\t-c \tclear signatures\n"
  "\t-s -\tsign signatures using certificate file\n"
  "\t-P -\tcertificate password\n"
  "\t-o -\toutput file name\n"
     );
 exit(1);
}
